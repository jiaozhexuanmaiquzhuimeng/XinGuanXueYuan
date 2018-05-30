<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
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
								        	<li data-name="kygl"><a href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=zsgz&title=zsgz&pageNo=1&table=td_Rmstu_admissions">科研管理</a></li>
								        	<li data-name="zdsys"><a href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=jygz&title=jygz&pageNo=1&table=td_Rmstu_employment">重点实验室</a></li>
								        	<li data-name="xsjl"><a href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=jygz&title=jygz&pageNo=1&table=td_Rmstu_employment">学术交流</a></li>
								        	<li data-name="gjbx"><a href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=jygz&title=jygz&pageNo=1&table=td_Rmstu_employment">国际办学</a></li>
								       		<li data-name="shfw"><a href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=jygz&title=jygz&pageNo=1&table=td_Rmstu_employment">社会服务</a></li>
								        </ul>
								      </div>
								    </div>
							  </div>
								
							</div>
							
    
                        </ul>

                        <div class="nav-header" data-toggle="collapse" data-target="#module-menu">
                            <i class="icon-dashboard"></i>首页版块管理</div>
                        
                            <!-- 动态菜单生成 -->
                            <ul id="module-menu" class="nav nav-list collapse in">
                                <li>
                                    <a href="index.html">最新动态</a>
                                </li>
                                <li>
                                    <a href="users.html">通知公告</a>
                                </li>
                                <li>
                                    <a href="user.html">党群工作</a>
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
                       
                    </ul>
                </div>
            </div>