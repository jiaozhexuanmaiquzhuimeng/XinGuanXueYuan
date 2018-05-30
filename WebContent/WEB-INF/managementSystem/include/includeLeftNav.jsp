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