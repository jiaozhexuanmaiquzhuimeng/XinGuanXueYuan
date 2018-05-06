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
 * ����ʱ�䣺2018��5��3��  ����5:54:38
 * ��ע��
 */
@WebServlet("/rmstuServlet")
public class RmstuServlet extends HttpServlet {

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
			//��ȡ˽�г�Ա����
			method.setAccessible(true);
			method.invoke(this, request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException(e);

		}
	}

	ToolService toolService = new ToolService();

	//����������ҵ�����б�ת����������ҵ�����б���ҳ��
	public void RmstuPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String table = request.getParameter("table");
		String pageNo = request.getParameter("pageNo");
		String title = request.getParameter("title");
		if(pageNo.equals("")){
			pageNo = "1";
		}
		
		Page<Tool> page = new Page<>(Integer.parseInt(pageNo));
		page = toolService.getPage(Integer.parseInt(pageNo), table);
		int totalPageNumber = page.getTotalPageNumber();
		
		request.setAttribute("pageInfo", page);
		request.setAttribute("table", table);
		request.setAttribute("totalPageNumber", totalPageNumber);
		request.setAttribute("title", title);
		
		request.getRequestDispatcher("/WEB-INF/jsp/Rmstu/list.jsp").forward(request, response);
	}

}