package com.xg.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xg.domain.Tool;
import com.xg.service.ToolService;
import com.xg.utils.Page;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@WebServlet("/managementServlet")
public class ManagementServlet extends HttpServlet {
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

	ToolService toolService = new ToolService();

	//点击连接跳转到不同的页面
	public void skipPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String jsp = request.getParameter("jsp");
		String table = request.getParameter("table");
		String pageNo = request.getParameter("pageNo");
		String title = request.getParameter("title");
		if (pageNo.equals("")) {
			pageNo = "1";
		}

		Page<Tool> page = new Page<>(Integer.parseInt(pageNo));
		page = toolService.getPage(Integer.parseInt(pageNo), table);
		int totalPageNumber = page.getTotalPageNumber();

		request.setAttribute("pageInfo", page);
		request.setAttribute("table", table);
		request.setAttribute("totalPageNumber", totalPageNumber);
		request.setAttribute("title", title);

		request.getRequestDispatcher("/WEB-INF/managementSystem/" + jsp + ".jsp").forward(request, response);
	}

	//转发到添加页面
	public void forwardPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/managementSystem/add.jsp").forward(request, response);
	}

	//删除操作
	public void deletePage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String table = request.getParameter("table");
		System.out.println(id);
		
		Tool tool = new Tool();
		tool.setId(Integer.parseInt(id));
		toolService.delete(tool, table);
		
		List<Tool> tools = new ArrayList<Tool>();
		tools = toolService.selectToolByTable(table);
		JSONArray jsonData = JSONArray.fromObject(tools);
		
		PrintWriter out = response.getWriter();
		out.print(jsonData);
		
		//request.getRequestDispatcher("/WEB-INF/managementSystem/add.jsp").forward(request, response);
	}

}