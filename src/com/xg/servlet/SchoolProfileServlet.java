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

import com.xg.domain.CollegeIntroduction;
import com.xg.domain.Creative;
import com.xg.domain.FirstNews;
import com.xg.domain.Graduate;
import com.xg.domain.Notice;
import com.xg.domain.Party;
import com.xg.domain.ScienceWork;
import com.xg.domain.StudentWork;
import com.xg.domain.TeachingWork;
import com.xg.domain.User;
import com.xg.service.CollegeIntroductionService;
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
@WebServlet("/schoolProfileServlet")
public class SchoolProfileServlet extends HttpServlet {

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
	
	CollegeIntroductionService collegeIntroductionService = new CollegeIntroductionService(); 
	
	//单击学院概况下拉列表转发到学院概况下拉列表子页面
	public void SchoolProfilePage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String table = request.getParameter("table");
		
		List<CollegeIntroduction> collegeIntroductions = new ArrayList<CollegeIntroduction>();
		
		collegeIntroductions = collegeIntroductionService.selectTitleAndDateByTable(table);
		request.setAttribute("collegeIntroductions", collegeIntroductions);
		
		request.getRequestDispatcher("/WEB-INF/jsp/list.jsp").forward(request, response);
	}

}
