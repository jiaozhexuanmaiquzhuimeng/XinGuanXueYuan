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
					<li><a href="#">学院首页<span class="nav-slider"></span></a></li>
					<li><a href="#" class="dropdown-toggle" data-toggle="dropdown">学院概况<span
							class="nav-slider"></span><b class="caret"></b></a>

						<ul class="dropdown-menu">
							<li><a href="<%=request.getContextPath()%>/schoolProfileServlet?method=SchoolProfilePage&table=td_college_introduction&title='学院简介'">学院简介</a></li>
							<li><a href="#">组织机构</a></li>
							<li><a href="#">师资队伍</a></li>
						</ul></li>
					<li><a href="#">教务教学 <span class="nav-slider"></span><b
							class="caret"></b>
					</a>

						<ul class="dropdown-menu">
							<li><a href="#">专业建设</a></li>
							<li><a href="#">教学工作</a></li>
							<li><a href="#">考研工作</a></li>
						</ul></li>
					<li><a href="#">招生就业<span class="nav-slider"></span><b
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">招生工作</a></li>
							<li><a href="#">教学工作</a></li>
						</ul></li>
					<li><a href="#">科研工作 <span class="nav-slider"></span><b
							class="caret"></b>
					</a>

						<ul class="dropdown-menu">
							<li><a href="#">科研管理</a></li>
							<li><a href="#">重点实验室</a></li>
							<li><a href="#">学术组织</a></li>
							<li><a href="#">学术交流</a></li>
							<li><a href="#">国际办学</a></li>
							<li><a href="#">社会服务</a></li>
						</ul></li>
					<li><a href="#">学生管理 <span class="nav-slider"></span><b
							class="caret"></b>
					</a>

						<ul class="dropdown-menu">
							<li><a href="#">学生工作</a></li>
							<li><a href="#">团总支</a></li>
							<li><a href="#">实习实训</a></li>
							<li><a href="#">电商基地</a></li>
						</ul></li>
					<li><a href="#" class="dropdown-toggle" data-toggle="dropdown">实验教学<span
							class="nav-slider"></span><b class="caret"></b></a>

						<ul class="dropdown-menu">
							<li><a href="#">示范中心</a></li>
							<li><a href="#">固定资产</a></li>
							<li><a href="#">网络资源</a></li>
						</ul></li>
					<li><a href="#">人才引进<span class="nav-slider"></span></a></li>
					<li><a href="#">校友风采<span class="nav-slider"></span></a></li>
				</ul>
			</div>
		</div>
	