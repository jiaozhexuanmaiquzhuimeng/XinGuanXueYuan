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
					<li><a href="<%=request.getContextPath()%>/userServlet?method=showTitle&creative=td_creative&graduate=td_education_stugraduate&party=td_test_center&sciencework=td_science_management&studentwork=td_stumanage_stuwork&firstnews=td_firstnews&notice=td_notice&teachingwork=td_education_teach">学院首页<span class="nav-slider"></span></a></li>
					<li><a href="" class="dropdown-toggle" data-toggle="dropdown" onclick="window.location.href='<%=request.getContextPath()%>/collegeServlet?method=SchoolProfilePage&table=td_college_introduction&title=introduction&pageNo=1'">学院概况<span
							class="nav-slider"></span><b class="caret"></b></a>

						<ul class="dropdown-menu">
							<li><a href="<%=request.getContextPath()%>/collegeServlet?method=SchoolProfilePage&table=td_college_introduction&title=introduction&pageNo=1" target="_blank">学院简介</a></li>
							<li><a href="<%=request.getContextPath()%>/collegeServlet?method=SchoolProfilePage&table=td_college_organization&title=organization&pageNo=1" target="_blank">组织机构</a></li>
							<li><a href="<%=request.getContextPath()%>/collegeServlet?method=SchoolProfilePage&table=td_college_teacherStroop&title=teacherStroop&pageNo=1" target="_blank">师资队伍</a></li>
						</ul></li>
					<li><a href="#" onclick="window.location.href='<%=request.getContextPath()%>/educationServlet?method=EducationTeachingPage&table=td_education_major&title=major&pageNo=1'">教务教学 <span class="nav-slider"></span><b
							class="caret"></b>
					</a>

						<ul class="dropdown-menu">
							<li><a href="<%=request.getContextPath()%>/educationServlet?method=EducationTeachingPage&table=td_education_major&title=major&pageNo=1" target="_blank">专业建设</a></li>
							<li><a href="<%=request.getContextPath()%>/educationServlet?method=EducationTeachingPage&table=td_education_teach&title=teach&pageNo=1" target="_blank">教学工作</a></li>
							<li><a href="<%=request.getContextPath()%>/educationServlet?method=EducationTeachingPage&table=td_education_stugraduate&title=stugraduate&pageNo=1" target="_blank">考研工作</a></li>
						</ul></li>
					<li><a href="#" onclick="window.location.href='<%=request.getContextPath()%>/rmstuServlet?method=RmstuPage&table=td_Rmstu_admissions&title=admissions&pageNo=1'">招生就业<span class="nav-slider"></span><b
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="<%=request.getContextPath()%>/rmstuServlet?method=RmstuPage&table=td_Rmstu_admissions&title=admissions&pageNo=1" target="_blank">招生工作</a></li>
							<li><a href="<%=request.getContextPath()%>/rmstuServlet?method=RmstuPage&table=td_Rmstu_employment&title=employment&pageNo=1" target="_blank">就业工作</a></li>
						</ul></li>
					<li><a href="#" onclick="window.location.href='<%=request.getContextPath()%>/scienceServlet?method=SciencePage&table=td_science_management&title=management&pageNo=1'">科研工作 <span class="nav-slider"></span><b
							class="caret"></b>
					</a>

						<ul class="dropdown-menu">
							<li><a href="<%=request.getContextPath()%>/scienceServlet?method=SciencePage&table=td_science_management&title=management&pageNo=1" target="_blank">科研管理</a></li>
							<li><a href="<%=request.getContextPath()%>/scienceServlet?method=SciencePage&table=td_science_keylaboratory&title=keylaboratory&pageNo=1" target="_blank">重点实验室</a></li>
							<li><a href="<%=request.getContextPath()%>/scienceServlet?method=SciencePage&table=td_science_communication&title=communication&pageNo=1" target="_blank">学术交流</a></li>
							<li><a href="<%=request.getContextPath()%>/scienceServlet?method=SciencePage&table=td_science_international&title=international&pageNo=1" target="_blank">国际办学</a></li>
							<li><a href="<%=request.getContextPath()%>/scienceServlet?method=SciencePage&table=td_science_service&title=service&pageNo=1" target="_blank">社会服务</a></li>
						</ul></li>
					<li><a href="#" onclick="window.location.href='<%=request.getContextPath()%>/stumanageServlet?method=StumanagePage&table=td_stumanage_stuwork&title=stuwork&pageNo=1'">学生管理 <span class="nav-slider"></span><b
							class="caret"></b>
					</a>

						<ul class="dropdown-menu">
							<li><a href="<%=request.getContextPath()%>/stumanageServlet?method=StumanagePage&table=td_stumanage_stuwork&title=stuwork&pageNo=1" target="_blank">学生工作</a></li>
							<li><a href="<%=request.getContextPath()%>/stumanageServlet?method=StumanagePage&table=td_stumanage_league&title=league&pageNo=1" target="_blank">社团活动</a></li>
							<li><a href="<%=request.getContextPath()%>/stumanageServlet?method=StumanagePage&table=td_stumanage_practice&title=practice&pageNo=1" target="_blank">心理健康</a></li>
							<li><a href="<%=request.getContextPath()%>/stumanageServlet?method=StumanagePage&table=td_stumanage_electricity&title=electricity&pageNo=1" target="_blank">资助工作</a></li>
						</ul></li>
					<li><a href="#" class="dropdown-toggle" data-toggle="dropdown" onclick="window.location.href='<%=request.getContextPath()%>/testServlet?method=TestPage&table=td_test_center&title=center&pageNo=1'" target="_blank">党群建设<span
							class="nav-slider"></span><b class="caret"></b></a>

						<ul class="dropdown-menu">
							<li><a href="<%=request.getContextPath()%>/testServlet?method=TestPage&table=td_test_center&title=center&pageNo=1" target="_blank">党团动态</a></li>
							<li><a href="<%=request.getContextPath()%>/testServlet?method=TestPage&table=td_test_money&title=money&pageNo=1" target="_blank">工会之家</a></li>
							<li><a href="<%=request.getContextPath()%>/testServlet?method=TestPage&table=td_test_resources&title=resources&pageNo=1" target="_blank">学习园地</a></li>
						</ul></li>
					<li><a href="<%=request.getContextPath()%>/talentServlet?method=TalentPage&table=td_talent_talent&title=talent&pageNo=1">人才引进<span class="nav-slider"></span></a></li>
					<li><a href="<%=request.getContextPath()%>/classmateServlet?method=ClassmatePage&table=td_classmate_classmate&title=classmate&pageNo=1">校友风采<span class="nav-slider"></span></a></li>
				</ul>
			</div>
		</div>
	