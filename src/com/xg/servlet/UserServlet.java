package com.xg.servlet;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xg.domain.Image;
import com.xg.domain.Tool;
import com.xg.domain.User;
import com.xg.service.ImageService;
import com.xg.service.ToolService;
import com.xg.service.UserService;
import com.xg.utils.CookieEncryptTool;

/**
 * @author Guozhen_Zhao
 * 创建时间：2018年3月17日  下午2:22:45
 * 备注：
 */
@WebServlet("/userServlet")
public class UserServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String methodName = request.getParameter("method");

		try {
			Method method = getClass().getDeclaredMethod(methodName, HttpServletRequest.class,
					HttpServletResponse.class);
			//获取私有成员变量
			method.setAccessible(true);
			method.invoke(this, request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException(e);

		}
	}

	ImageService imageService = new ImageService();
	ToolService toolService = new ToolService();

	UserService userService = new UserService();

	//链接到首页并主页显示标题
	public void showTitle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String firstnews = request.getParameter("firstnews");
		String creative = request.getParameter("creative");
		String graduate = request.getParameter("graduate");
		String party = request.getParameter("party");
		String sciencework = request.getParameter("sciencework");
		String studentwork = request.getParameter("studentwork");
		String notice = request.getParameter("notice");
		String teachingwork = request.getParameter("teachingwork");

		List<String> tables = new ArrayList<String>();
		tables.add(teachingwork);
		tables.add(notice);
		tables.add(firstnews);
		tables.add(creative);
		tables.add(graduate);
		tables.add(party);
		tables.add(sciencework);
		tables.add(studentwork);

		for (String table : tables) {
			List<Tool> tools = new ArrayList<Tool>();
			tools = toolService.selectToolByTable(table);

			//判断从数据库中的数据是否超过5条
			if (tools.size() < 5) {
				request.setAttribute(table, tools);
			} else {
				request.setAttribute(table, tools.subList(0, 5));
			}
		}

		List<Image> images = new ArrayList<Image>();

		images = imageService.selectImage();

		if (images.size() < 5) {
			request.setAttribute("images", images);
		} else {
			request.setAttribute("images", images.subList(0, 5));
		}

		request.getRequestDispatcher("/WEB-INF/jsp/index.jsp").forward(request, response);
	}

	//转发到登陆页面
	public void loginPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
	}

	//登陆页实现
	public void loginPageTwo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userName = request.getParameter("userName");
		String passWord = request.getParameter("passWord");
		String rememberMe = request.getParameter("rememberMe");

		String message = "";

		if (userName.equals("")) {
			message = "用户名不能为空";
		} else if (passWord.equals("")) {
			message = "密码不能为空";
		} else {
			User user = userService.login(userName);
			//System.out.println("1111");
			if (user.getPassWord().equals(passWord)) {
				//System.out.println("2222");
				if ("true".equals(rememberMe)) {
					Cookie c1 = new Cookie("userName", CookieEncryptTool.encodeBase64(userName));
					Cookie c2 = new Cookie("passWord", CookieEncryptTool.encodeBase64(passWord));
					c1.setMaxAge(365 * 24 * 3600);
					c2.setMaxAge(365 * 24 * 3600);
					response.addCookie(c1);
					response.addCookie(c2);
				} else {
					Cookie[] cookies = request.getCookies();
					if (cookies != null) {
						for (Cookie cookie : cookies) {
							cookie.setMaxAge(0);
							response.addCookie(cookie);
						}
					}
				}
				request.getRequestDispatcher("/WEB-INF/jsp/home.jsp").forward(request, response);
				return;
			} else {
				message = "用户名或密码错误";
			}
		}

		request.setAttribute("message", message);
		request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);

	}

	//转发到注册页面
	public void registerPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/jsp/register.jsp").forward(request, response);
	}

	//注册页实现
	public void registerPageTwo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String userName = request.getParameter("username");
		String email = request.getParameter("email");
		String passWord = request.getParameter("password");
		String passwordRepeat = request.getParameter("passwordrepeat");

		String message = "";

		if (userName.equals("")) {
			message = "用户名为空";
		} else if (passWord.equals("") && passwordRepeat.equals("")) {
			message = "密码不为空";
		} else if (!passWord.equals(passwordRepeat)) {
			message = "两次密码不一致";
		} else {
			User user = new User();
			user.setName(name);
			user.setUserName(userName);
			user.setEmail(email);
			user.setPassWord(passWord);
			Long info = userService.selectCountByUserName(user);
			if (info == 0) {
				userService.register(user);

			} else {
				message = "用户名已存在";
			}
		}

		if (message.equals("")) {
			request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
			return;
		} else {
			request.setAttribute("message", message);
			request.getRequestDispatcher("/WEB-INF/jsp/register.jsp").forward(request, response);
		}
	}

	//转发到各页面的详情页
	public void contentPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String table = request.getParameter("table");

		Tool tool = new Tool();
		tool = toolService.selectToolByIdAndTable(Integer.parseInt(id), table);

		request.setAttribute(table, tool);

		request.getRequestDispatcher("/WEB-INF/jsp/content.jsp").forward(request, response);
	}

}
