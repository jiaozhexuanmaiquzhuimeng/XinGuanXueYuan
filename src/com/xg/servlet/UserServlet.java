package com.xg.servlet;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

import javax.jws.soap.SOAPBinding.Use;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sound.midi.MidiDevice.Info;

import com.xg.domain.Creative;
import com.xg.domain.FirstNews;
import com.xg.domain.Graduate;
import com.xg.domain.Notice;
import com.xg.domain.Party;
import com.xg.domain.ScienceWork;
import com.xg.domain.StudentWork;
import com.xg.domain.TeachingWork;
import com.xg.domain.User;
import com.xg.service.CreativeService;
import com.xg.service.FirstNewsService;
import com.xg.service.GraduateService;
import com.xg.service.NoticeService;
import com.xg.service.PartyService;
import com.xg.service.ScienceWorkService;
import com.xg.service.StudentWorkService;
import com.xg.service.TeachingWorkService;
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

	FirstNewsService firstNewsService = new FirstNewsService();
	NoticeService noticeService = new NoticeService();
	TeachingWorkService teachingWorkService = new TeachingWorkService();
	ScienceWorkService scienceWorkService = new ScienceWorkService();
	GraduateService graduateService = new GraduateService();
	PartyService partyService = new PartyService();
	StudentWorkService studentWorkService = new StudentWorkService();
	CreativeService creativeService = new CreativeService();

	UserService userService = new UserService();

	//链接到首页并主页显示标题
	public void showTitle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<FirstNews> firstNews = new ArrayList<FirstNews>();
		List<Notice> notices = new ArrayList<Notice>();
		List<TeachingWork> teachingWorks = new ArrayList<TeachingWork>();
		List<ScienceWork> scienceWorks = new ArrayList<ScienceWork>();
		List<Graduate> graduates = new ArrayList<Graduate>();
		List<Party> partys = new ArrayList<Party>();
		List<StudentWork> studentWorks = new ArrayList<StudentWork>();
		List<Creative> creatives = new ArrayList<Creative>();

		List<FirstNews> images = new ArrayList<FirstNews>();

		firstNews = firstNewsService.selectFirstNews();
		notices = noticeService.selectNotice();
		teachingWorks = teachingWorkService.selectTeachingWork();
		scienceWorks = scienceWorkService.selectScienceWork();
		graduates = graduateService.selectGraduate();
		partys = partyService.selectParty();
		studentWorks = studentWorkService.selectStudentWork();
		creatives = creativeService.selectCreativeWork();

		images = firstNewsService.selectImage();

		request.setAttribute("firstNews", firstNews.subList(0, 5));
		request.setAttribute("notices", notices.subList(0, 5));
		request.setAttribute("teachingWorks", teachingWorks.subList(0, 5));
		request.setAttribute("scienceWorks", scienceWorks.subList(0, 5));
		request.setAttribute("graduates", graduates.subList(0, 5));
		request.setAttribute("partys", partys.subList(0, 5));
		request.setAttribute("studentWorks", studentWorks.subList(0, 5));
		request.setAttribute("creatives", creatives.subList(0, 5));

		request.setAttribute("images", images.subList(0, 4));

		request.getRequestDispatcher("/jsp/index.jsp").forward(request, response);
	}

	//转发到登陆页面
	public void loginPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("jsp/login.jsp").forward(request, response);
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
				request.getRequestDispatcher("jsp/home.jsp").forward(request, response);
				return;
			} else {
				message = "用户名或密码错误";
			}
		}

		request.setAttribute("message", message);
		request.getRequestDispatcher("jsp/login.jsp").forward(request, response);

	}

	//转发到注册页面
	public void registerPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("jsp/register.jsp").forward(request, response);
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
			request.getRequestDispatcher("jsp/login.jsp").forward(request, response);
			return;
		} else {
			request.setAttribute("message", message);
			request.getRequestDispatcher("jsp/register.jsp").forward(request, response);
		}
	}

	//转发到最新动态详情页面
	public void contentPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");

		FirstNews firstNews = new FirstNews();
		firstNews = firstNewsService.selectFirstNewsById(Integer.parseInt(id));

		request.setAttribute("firstNews", firstNews);

		request.getRequestDispatcher("jsp/content.jsp").forward(request, response);
	}

	//转发到通知公告详情页面
	public void contentTwoPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");

		Notice notice = new Notice();
		notice = noticeService.selectNoticeById(Integer.parseInt(id));

		request.setAttribute("notice", notice);

		request.getRequestDispatcher("jsp/content.jsp").forward(request, response);
	}

	//转发到教学工作详情页面
	public void contentThreePage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");

		TeachingWork teachingWork = new TeachingWork();
		teachingWork = teachingWorkService.selectTeachingWorkById(Integer.parseInt(id));

		request.setAttribute("teachingWork", teachingWork);

		request.getRequestDispatcher("jsp/content.jsp").forward(request, response);
	}

	//转发到教学工作详情页面
	public void contentFourPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");

		ScienceWork scienceWork = new ScienceWork();
		scienceWork = scienceWorkService.selectScienceWorkById(Integer.parseInt(id));

		request.setAttribute("scienceWork", scienceWork);

		request.getRequestDispatcher("jsp/content.jsp").forward(request, response);
	}

	//转发到考研专栏详情页面
	public void contentFivePage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");

		Graduate graduate = new Graduate();
		graduate = graduateService.selectGraduateById(Integer.parseInt(id));

		request.setAttribute("graduate", graduate);

		request.getRequestDispatcher("jsp/content.jsp").forward(request, response);
	}

	//转发到党群工作详情页面
	public void contentSixPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");

		Party party = new Party();
		party = partyService.selectGraduateById(Integer.parseInt(id));

		request.setAttribute("party", party);

		request.getRequestDispatcher("jsp/content.jsp").forward(request, response);
	}

	//转发到学生工作详情页面
	public void contentSevenPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");

		StudentWork studentWork = new StudentWork();
		studentWork = studentWorkService.selectStudentWorkById(Integer.parseInt(id));

		request.setAttribute("studentWork", studentWork);

		request.getRequestDispatcher("jsp/content.jsp").forward(request, response);
	}

	//转发到学生创新详情页面
	public void contentEightPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		
		Creative creative = new Creative();
		creative = creativeService.selectCreativeById(Integer.parseInt(id));

		request.setAttribute("creative", creative);

		request.getRequestDispatcher("jsp/content.jsp").forward(request, response);
	}

}
