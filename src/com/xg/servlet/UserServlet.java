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

import com.xg.domain.Creative;
import com.xg.domain.FirstNews;
import com.xg.domain.Graduate;
import com.xg.domain.Notice;
import com.xg.domain.Party;
import com.xg.domain.ScienceWork;
import com.xg.domain.StudentWork;
import com.xg.domain.TeachingWork;
import com.xg.service.CreativeService;
import com.xg.service.FirstNewsService;
import com.xg.service.GraduateService;
import com.xg.service.NoticeService;
import com.xg.service.PartyService;
import com.xg.service.ScienceWorkService;
import com.xg.service.StudentWorkService;
import com.xg.service.TeachingWorkService;

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
	
	
	//链接到首页并主页显示标题
	public void showTitle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("进入。。。");
		List<FirstNews> titles = new ArrayList<FirstNews>(); 
		List<Notice> notices = new ArrayList<Notice>();
		List<TeachingWork> teachingWorks = new ArrayList<TeachingWork>();
		List<ScienceWork> scienceWorks = new ArrayList<ScienceWork>();
		List<Graduate> graduates = new ArrayList<Graduate>();
		List<Party> partys = new ArrayList<Party>();
		List<StudentWork> studentWorks = new ArrayList<StudentWork>();
		List<Creative> creatives = new ArrayList<Creative>();
		
		titles = firstNewsService.selectTitle();
		notices = noticeService.selectNotice();
		teachingWorks = teachingWorkService.selectTeachingWork();
		scienceWorks = scienceWorkService.selectScienceWork();
		graduates = graduateService.selectGraduate();
		partys = partyService.selectParty();
		studentWorks = studentWorkService.selectStudentWork();
		creatives = creativeService.selectCreativeWork();
		
		request.setAttribute("titles", titles);
		request.setAttribute("notices", notices);
		request.setAttribute("teachingWorks", teachingWorks);
		request.setAttribute("scienceWorks", scienceWorks);
		request.setAttribute("graduates", graduates);
		request.setAttribute("partys", partys);
		request.setAttribute("studentWorks", studentWorks);
		request.setAttribute("creatives", creatives);
		
		request.getRequestDispatcher("/jsp/index.jsp").forward(request, response);
	}

}
