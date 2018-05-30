<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<div class="span3">
                <div class="sidebar-nav">
                    <div class="nav-header" data-toggle="collapse" data-target="#column-menu">
                        <i class="icon-dashboard"></i>网站栏目管理</div>
                    
                        <!-- 动态菜单生成 -->
                        <ul id="column-menu" class="nav nav-list collapse in">
                        
<!--                             <li> -->
<!--                                 <a href="index.html">学院主页</a> -->
<!--                             </li> -->
<!--                             <li> -->
<!--                                 <a href="#">学院概况<i class="fa fa-plus"></i></a> -->
<!--                                 <ul class="childList"> -->
<!--                                 	<li><a href="">学院简介</a></li> -->
<!--                                 	<li><a href="">组织机构</a></li> -->
<!--                                 	<li><a href="">师资队伍</a></li> -->
<!--                                 </ul> -->
<!--                             </li> -->
<!--                             <li> -->
<!--                                 <a href="user.html">教务教学</a> -->
<!--                             </li> -->
<!--                             <li> -->
<!--                                 <a href="gallery.html">招生就业</a> -->
<!--                             </li> -->
<!--                             <li> -->
<!--                                 <a href="calendar.html">科研工作</a> -->
<!--                             </li> -->
<!--                             <li> -->
<!--                                 <a href="faq.html">学生管理</a> -->
<!--                             </li> -->
<!--                             <li> -->
<!--                                 <a href="help.html">党群建设</a> -->
<!--                             </li> -->
<!--                             <li> -->
<!--                                 <a href="help.html">人才引进</a> -->
<!--                             </li> -->
<!--                             <li> -->
<!--                                 <a href="help.html">校友风采</a> -->
<!--                             </li> -->
									<style>
									.nav-list a{
										display: block;
									}
									.nav-list a i.fa{
										vertical-align:middle;
										padding: 3px 10px 0 0;
									}
									.nav-list ul.child-list{
										padding: 0;
										margin: 0;
									}									
									.nav-list ul.child-list li{
										line-height: 50px;
										border-bottom: 1px dotted #ccc;
									}
									.nav-list ul.child-list li:last-child{
										border-bottom: 0 none;
									}
									.nav-list ul.child-list li:hover a{
										color: #000;
									}
										
									</style>
									<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
									  <div class="panel panel-default">
									    <div class="panel-heading" role="tab" id="headingOne">
									      <h5 class="panel-title">
									        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
									          	学院简介
									          	<i class="fa fa-plus pull-right"></i>
									        </a>
									      </h5>
									    </div>
									    <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
									      <div class="panel-body">
									        <ul class="child-list">
									        	<li><a href="<%=request.getContextPath()%>/managementServlet?method=skipPage&table=xyjj">学院简介</a></li>
									        	<li><a href="">组织机构</a></li>
									        	<li><a href="">师资队伍</a></li>
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