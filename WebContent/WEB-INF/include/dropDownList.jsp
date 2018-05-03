<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#example-navbar-collapse">
					<span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="example-navbar-collapse">
				<ul class="nav navbar-nav" id="Nav">
					<li><a href="<%=request.getContextPath()%>/userServlet?method=showTitle&creative=td_creative&graduate=td_graduate&party=td_party&sciencework=td_sciencework&studentwork=td_studentwork&firstnews=td_firstnews&notice=td_notice&teachingwork=td_teachingwork">学院首页<span class="nav-slider"></span></a></li>
					<li><a href="<%=request.getContextPath()%>/collegeServlet?method=SchoolProfilePage&table=td_college_introduction&title=introduction" class="dropdown-toggle" data-toggle="dropdown">学院概况<span
							class="nav-slider"></span><b class="caret"></b></a>

						<ul class="dropdown-menu">
							<li><a href="<%=request.getContextPath()%>/collegeServlet?method=SchoolProfilePage&table=td_college_introduction&title=introduction">学院简介</a></li>
							<li><a href="<%=request.getContextPath()%>/collegeServlet?method=SchoolProfilePage&table=td_college_organization&title=organization">组织机构</a></li>
							<li><a href="<%=request.getContextPath()%>/collegeServlet?method=SchoolProfilePage&table=td_college_teacherStroop&title=teacherStroop">师资队伍</a></li>
						</ul></li>
					<li><a href="#">教务教学 <span class="nav-slider"></span><b
							class="caret"></b>
					</a>

						<ul class="dropdown-menu">
							<li><a href="<%=request.getContextPath()%>/educationServlet?method=EducationTeachingPage&table=td_education_major&title=major">专业建设</a></li>
							<li><a href="<%=request.getContextPath()%>/educationServlet?method=EducationTeachingPage&table=td_education_teach&title=teach">教学工作</a></li>
							<li><a href="<%=request.getContextPath()%>/educationServlet?method=EducationTeachingPage&table=td_education_stugraduate&title=stugraduate">考研工作</a></li>
						</ul></li>
					<li><a href="#">招生就业<span class="nav-slider"></span><b
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="<%=request.getContextPath()%>/rmstuServlet?method=RmstuPage&table=td_Rmstu_admissions&title=admissions">招生工作</a></li>
							<li><a href="<%=request.getContextPath()%>/rmstuServlet?method=RmstuPage&table=td_Rmstu_employment&title=employment">教学工作</a></li>
						</ul></li>
					<li><a href="#">科研工作 <span class="nav-slider"></span><b
							class="caret"></b>
					</a>

						<ul class="dropdown-menu">
							<li><a href="<%=request.getContextPath()%>/scienceServlet?method=SciencePage&table=td_science_management&title=management">科研管理</a></li>
							<li><a href="<%=request.getContextPath()%>/scienceServlet?method=SciencePage&table=td_science_keylaboratory&title=keylaboratory">重点实验室</a></li>
							<li><a href="<%=request.getContextPath()%>/scienceServlet?method=SciencePage&table=td_science_organization&title=organization">学术组织</a></li>
							<li><a href="<%=request.getContextPath()%>/scienceServlet?method=SciencePage&table=td_science_communication&title=communication">学术交流</a></li>
							<li><a href="<%=request.getContextPath()%>/scienceServlet?method=SciencePage&table=td_science_international&title=international">国际办学</a></li>
							<li><a href="<%=request.getContextPath()%>/scienceServlet?method=SciencePage&table=td_science_service&title=service">社会服务</a></li>
						</ul></li>
					<li><a href="#">学生管理 <span class="nav-slider"></span><b
							class="caret"></b>
					</a>

						<ul class="dropdown-menu">
							<li><a href="<%=request.getContextPath()%>/stumanageServlet?method=StumanagePage&table=td_stumanage_stuwork&title=stuwork">学生工作</a></li>
							<li><a href="<%=request.getContextPath()%>/stumanageServlet?method=StumanagePage&table=td_stumanage_league&title=league">团总支</a></li>
							<li><a href="<%=request.getContextPath()%>/stumanageServlet?method=StumanagePage&table=td_stumanage_practice&title=practice">实习实训</a></li>
							<li><a href="<%=request.getContextPath()%>/stumanageServlet?method=StumanagePage&table=td_stumanage_electricity&title=electricity">电商基地</a></li>
						</ul></li>
					<li><a href="#" class="dropdown-toggle" data-toggle="dropdown">实验教学<span
							class="nav-slider"></span><b class="caret"></b></a>

						<ul class="dropdown-menu">
							<li><a href="<%=request.getContextPath()%>/testServlet?method=TestPage&table=td_test_center&title=center">示范中心</a></li>
							<li><a href="<%=request.getContextPath()%>/testServlet?method=TestPage&table=td_test_money&title=money">固定资产</a></li>
							<li><a href="<%=request.getContextPath()%>/testServlet?method=TestPage&table=td_test_resources&title=resources">网络资源</a></li>
						</ul></li>
					<li><a href="<%=request.getContextPath()%>/talentServlet?method=TalentPage&table=td_talent_talent&title=talent">人才引进<span class="nav-slider"></span></a></li>
					<li><a href="<%=request.getContextPath()%>/classmateServlet?method=ClassmatePage&table=td_classmate_classmate&title=classmate">校友风采<span class="nav-slider"></span></a></li>
				</ul>
			</div>
		</div>
	