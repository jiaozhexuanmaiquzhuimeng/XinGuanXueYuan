<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="span3 left-menu">
                <div class="sidebar-nav">
                    <div class="nav-header" data-toggle="collapse" data-target="#column-menu">
                        <i class="icon-dashboard"></i>网站栏目管理</div>
                    
                        <!-- 动态菜单生成 -->
                        <ul id="column-menu" class="nav nav-list collapse in">
							<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
								  <div class="panel panel-default">
								    <div class="panel-heading" role="tab" id="headingOne">
								      <h5 class="panel-title">
								        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#Introduction" aria-expanded="true" aria-controls="Introduction">
								          	学院概况
								          	<i class="fa fa-sort-desc"></i>
								        </a>
								      </h5>
								    </div>
								    <div id="Introduction" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
								      <div class="panel-body menu-content">
								        <ul class="child-list">
								        	<li data-name="xyjj"><a href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=xyjj&title=xyjj&pageNo=1&table=td_college_introduction">学院简介</a></li>
								        	<li data-name="zzjg"><a href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=zzjg&title=zzjg&pageNo=1&table=td_college_organization">组织机构</a></li>
								        	<li data-name="szdw"><a href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=szdw&title=szdw&pageNo=1&table=td_college_teacherStroop">师资队伍</a></li>
								        </ul>
								      </div>
								    </div>
								  </div>
									 
								  <div class="panel panel-default">
								    <div class="panel-heading" role="tab" id="headingTwo">
								      <h5 class="panel-title">
								        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#Education" aria-expanded="true" aria-controls="Education">
								          	教务教学
								          	<i class="fa fa-sort-desc"></i>
								        </a>
								      </h5>
								    </div>
								    <div id="Education" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
								      <div class="panel-body menu-content">
								        <ul class="child-list">
								        	<li data-name="zyjs"><a href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=zyjs&title=zyjs&pageNo=1&table=td_education_major">专业建设</a></li>
								        	<li data-name="jxgz"><a href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=jxgz&title=jxgz&pageNo=1&table=td_education_teach">教学工作</a></li>
								        	<li data-name="kygz"><a href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=kygz&title=kygz&pageNo=1&table=td_education_stugraduate">考研工作</a></li>
								        </ul>
								      </div>
								    </div>
							  </div>
								
								  <div class="panel panel-default">
								    <div class="panel-heading" role="tab" id="headingThree">
								      <h5 class="panel-title">
								        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#Student" aria-expanded="true" aria-controls="Student">
								          	招生就业
								          	<i class="fa fa-sort-desc"></i>
								        </a>
								      </h5>
								    </div>
								    <div id="Student" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
								      <div class="panel-body menu-content">
								        <ul class="child-list">
								        	<li data-name="zsgz"><a href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=zsgz&title=zsgz&pageNo=1&table=td_Rmstu_admissions">招生工作</a></li>
								        	<li data-name="jygz"><a href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=jygz&title=jygz&pageNo=1&table=td_Rmstu_employment">就业工作</a></li>
								        </ul>
								      </div>
								    </div>
							  </div>
								
								  <div class="panel panel-default">
								    <div class="panel-heading" role="tab" id="headingFour">
								      <h5 class="panel-title">
								        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#Science" aria-expanded="true" aria-controls="Science">
								          	科研工作
								          	<i class="fa fa-sort-desc"></i>
								        </a>
								      </h5>
								    </div>
								    <div id="Science" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
								      <div class="panel-body menu-content">
								        <ul class="child-list">
								        	<li data-name="kygl"><a href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=kygl&title=kygl&pageNo=1&table=td_science_management">科研管理</a></li>
								        	<li data-name="zdsys"><a href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=zdsys&title=zdsys&pageNo=1&table=td_science_keylaboratory">重点实验室</a></li>
								        	<li data-name="xsjl"><a href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=xsjl&title=xsjl&pageNo=1&table=td_science_communication">学术交流</a></li>
								        	<li data-name="gjbx"><a href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=gjbx&title=gjbx&pageNo=1&table=td_science_international">国际办学</a></li>
								       		<li data-name="shfw"><a href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=shfw&title=shfw&pageNo=1&table=td_science_service">社会服务</a></li>
								        </ul>
								      </div>
								    </div>
							  </div>
							  
							  <div class="panel panel-default">
								    <div class="panel-heading" role="tab" id="headingFive">
								      <h5 class="panel-title">
								        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#StuManagement" aria-expanded="true" aria-controls="StuManagement">
								          	学生管理
								          	<i class="fa fa-sort-desc"></i>
								        </a>
								      </h5>
								    </div>
								    <div id="StuManagement" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
								      <div class="panel-body menu-content">
								        <ul class="child-list">
								        	<li data-name="xsgz"><a href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=xsgz&title=xsgz&pageNo=1&table=td_stumanage_stuwork">学生工作</a></li>
								        	<li data-name="sthd"><a href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=sthd&title=sthd&pageNo=1&table=td_stumanage_league">社团活动</a></li>
								        	<li data-name="xljk"><a href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=xljk&title=xljk&pageNo=1&table=td_stumanage_practice">心理健康</a></li>
								        	<li data-name="zzgz"><a href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=zzgz&title=zzgz&pageNo=1&table=td_stumanage_electricity">资助工作</a></li>
								        </ul>
								      </div>
								    </div>
							  </div>
							  
							  <div class="panel panel-default">
								    <div class="panel-heading" role="tab" id="headingSix">
								      <h5 class="panel-title">
								        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#Group" aria-expanded="true" aria-controls="Group">
								          	党群建设
								          	<i class="fa fa-sort-desc"></i>
								        </a>
								      </h5>
								    </div>
								    <div id="Group" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSix">
								      <div class="panel-body menu-content">
								        <ul class="child-list">
								        	<li data-name="dtdt"><a href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=dtdt&title=dtdt&pageNo=1&table=td_Group_dynamics">党团动态</a></li>
								        	<li data-name="ghzj"><a href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=ghzj&title=ghzj&pageNo=1&table=td_Group_home">工会之家</a></li>
								        	<li data-name="xxyd"><a href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=xxyd&title=xxyd&pageNo=1&table=td_Group_study">学习园地</a></li>
								        </ul>
								      </div>
								    </div>
							  </div>
							  
								
							</div>
							
    
                        </ul>

                        <div class="nav-header" data-toggle="collapse" data-target="#module-menu">
                            <i class="icon-dashboard"></i>首页版块管理</div>
                        
                            <!-- 动态菜单生成 -->
                            <ul id="module-menu" class="nav nav-list collapse in menu-content">
                            	<li data-name="rcyj">
                                    <a href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=rcyj&title=rcyj&pageNo=1&table=td_talent_talent">人才引进</a>
                                </li>
                                <li data-name="xyfc">
                                    <a href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=xyfc&title=xyfc&pageNo=1&table=td_classmate_classmate">校友风采</a>
                                </li>
                                <li data-name="zxdt">
                                    <a href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=zxdt&title=zxdt&pageNo=1&table=td_firstnews">最新动态</a>
                                </li>
                                <li data-name="tzgg">
                                    <a href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=tzgg&title=tzgg&pageNo=1&table=td_notice">通知公告</a>
                                </li>
                            </ul>
    


                    <div class="nav-header" data-toggle="collapse" data-target="#data-menu">
                        <i class="icon-briefcase"></i>资料库管理
                    </div>
                    <ul id="data-menu" class="nav nav-list collapse in">
                        <li>
                            <a href="sign-in.html">查看资料库</a>
                        </li>
                        <li>
                            <a href="sign-up.html">回收站</a>
                        </li>
                    </ul>

                    <div class="nav-header" data-toggle="collapse" data-target="#admin-menu">
                        <i class="icon-exclamation-sign"></i>管理员操作</div>
                    <ul id="admin-menu" class="nav nav-list collapse in">
                        <li>
                            <a href="403.html">查看留言板</a>
                        </li>
                        <c:choose>
                        	<c:when test="${sessionScope.role == '管理员' }">
		                        <li>
		                            <a href="<%=request.getContextPath()%>/managementServlet?method=userAccount">分配用户帐号</a>
		                        </li>
                        	</c:when>
                        </c:choose>
                    </ul>
                </div>
            </div>