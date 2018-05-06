package com.xg.servlet;

import java.io.IOException;
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

/**
 * @author Guozhen_Zhao
 * 创建时间：2018年3月17日  下午2:22:45
 * 备注：
 */
@WebServlet("/collegeServlet")
public class CollegeServlet extends HttpServlet {

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

	//单击学院概况下拉列表转发到学院概况下拉列表子页面
	public void SchoolProfilePage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String table = request.getParameter("table");
		String pageNo = request.getParameter("pageNo");
		if("".equals(pageNo)){
			pageNo = "1";
		}

		Page<Tool> page = new Page<>(Integer.parseInt(pageNo));
		
		page = toolService.getPage(Integer.parseInt(pageNo), table);
		int totalPageNumber = page.getTotalPageNumber();
		
		request.setAttribute("pageInfo", page);
		request.setAttribute("table", table);
		request.setAttribute("totalPageNumber", totalPageNumber);
		
		request.getRequestDispatcher("/WEB-INF/jsp/College/list.jsp").forward(request, response);
	}
	
}
