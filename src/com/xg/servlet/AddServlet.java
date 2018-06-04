package com.xg.servlet;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.httpclient.util.DateUtil;

import com.xg.domain.Tool;
import com.xg.service.ToolService;

/**
 * Servlet implementation class AddServlet
 */
@WebServlet("/addServlet")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
	
	//添加操作
	public void add(HttpServletRequest request, HttpServletResponse response) {
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String tableName = request.getParameter("tableName");
		String html = request.getParameter("html");
		String date = DateUtil.formatDate(new Date(),"yyyy-MM-dd");
		toolService.add(new Tool(title,date,author,html),tableName);
	}
	
	//更新操作
	public void update(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String tableName = request.getParameter("tableName");
		String html = request.getParameter("html");
		String date = DateUtil.formatDate(new Date(),"yyyy-MM-dd");
		toolService.update(new Tool(Integer.parseInt(id), title,date,author,html),tableName);
	}

}
