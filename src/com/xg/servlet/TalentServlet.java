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

/**
 * @author Guozhen_Zhao
 * 创建时间：2018年5月3日  下午8:26:44
 * 备注：
 */
@WebServlet("/talentServlet")
public class TalentServlet extends HttpServlet {

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

	//单击人才引进下拉列表转发到人才引进下拉列表子页面
	public void TalentPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String table = request.getParameter("table");

		List<Tool> tools = new ArrayList<Tool>();

		tools = toolService.selectToolByTable(table);
		request.setAttribute(table, tools);

		request.getRequestDispatcher("/WEB-INF/jsp/Talent/list.jsp").forward(request, response);
	}

}