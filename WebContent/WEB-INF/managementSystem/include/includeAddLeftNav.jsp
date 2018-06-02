<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<div class="span3 left-menu left-menu-add">
                <div class="sidebar-nav">
                    <div class="nav-header" data-toggle="collapse" data-target="#column-menu">
                        <i class="icon-dashboard"></i>选择录入栏目</div>
                    
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
								        	<li data-name="xyjj" data-table="td_college_introduction "><a href="<%=request.getContextPath()%>/managementServlet?method=forwardPage&title=xyjj">学院简介</a></li>
								        	<li data-name="zzjg" data-table="td_college_organization "><a href="<%=request.getContextPath()%>/managementServlet?method=forwardPage&title=zzjg">组织机构</a></li>
								        	<li data-name="szdw" data-table="td_college_teacherStroop "><a href="<%=request.getContextPath()%>/managementServlet?method=forwardPage&title=szdw">师资队伍</a></li>
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
								        	<li data-name="zyjs" data-table="td_education_major "><a href="<%=request.getContextPath()%>/managementServlet?method=forwardPage&title=zyjs">专业建设</a></li>
								        	<li data-name="jxgz" data-table="td_education_teach"><a href="<%=request.getContextPath()%>/managementServlet?method=forwardPage&title=jxgz">教学工作</a></li>
								        	<li data-name="kygz" data-table="td_education_stugraduate"><a href="<%=request.getContextPath()%>/managementServlet?method=forwardPage&title=kygz">考研工作</a></li>
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
								        	<li data-name="zsgz" data-table="td_Rmstu_admissions "><a href="<%=request.getContextPath()%>/managementServlet?method=forwardPage&title=zsgz">招生工作</a></li>
								        	<li data-name="jygz" data-table="td_Rmstu_employment"><a href="<%=request.getContextPath()%>/managementServlet?method=forwardPage&title=jygz">就业工作</a></li>
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
								        	<li data-name="kygl" data-table="td_science_management"><a href="<%=request.getContextPath()%>/managementServlet?method=forwardPage&title=kygl">科研管理</a></li>
								        	<li data-name="zdsys" data-table="td_science_keylaboratory"><a href="<%=request.getContextPath()%>/managementServlet?method=forwardPage&title=zdsys">重点实验室</a></li>
								        	<li data-name="xsjl" data-table="td_science_communication"><a href="<%=request.getContextPath()%>/managementServlet?method=forwardPage&title=xsjl">学术交流</a></li>
								        	<li data-name="gjbx" data-table="td_science_international"><a href="<%=request.getContextPath()%>/managementServlet?method=forwardPage&title=gjbx">国际办学</a></li>
								       		<li data-name="shfw" data-table="td_science_service"><a href="<%=request.getContextPath()%>/managementServlet?method=forwardPage&title=shfw">社会服务</a></li>
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
								        	<li data-name="xsgz" data-table="td_stumanage_stuwork"><a href="<%=request.getContextPath()%>/managementServlet?method=forwardPage&title=xsgz">学生工作</a></li>
								        	<li data-name="sthd" data-table="td_stumanage_league"><a href="<%=request.getContextPath()%>/managementServlet?method=forwardPage&title=sthd">社团活动</a></li>
								        	<li data-name="xljk" data-table="td_stumanage_practice"><a href="<%=request.getContextPath()%>/managementServlet?method=forwardPage&title=xljk">心理健康</a></li>
								        	<li data-name="zzgz" data-table="td_stumanage_electricity"><a href="<%=request.getContextPath()%>/managementServlet?method=forwardPage&title=zzgz">资助工作</a></li>
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
								        	<li data-name="dtdt" data-table="td_group_dynamics"><a href="<%=request.getContextPath()%>/managementServlet?method=forwardPage&title=dtdt">党团动态</a></li>
								        	<li data-name="ghzj" data-table="td_group_home"><a href="<%=request.getContextPath()%>/managementServlet?method=forwardPage&title=ghzj">工会之家</a></li>
								        	<li data-name="xxyd" data-table="td_group_study"><a href="<%=request.getContextPath()%>/managementServlet?method=forwardPage&title=xxyd">学习园地</a></li>
								        </ul>
								      </div>
								    </div>
							  </div>
							  
								
							</div>
							
    
                        </ul>

                        <div class="nav-header" data-toggle="collapse" data-target="#module-menu">
                            <i class="icon-dashboard"></i>选择录入版块</div>
                        
                            <!-- 动态菜单生成 -->
                            <ul id="module-menu" class="nav nav-list collapse in menu-content child-list">
                            	<li data-name="rcyj" data-table="td_talent_talent">
                                    <a href="<%=request.getContextPath()%>/managementServlet?method=forwardPage&title=rcyj">人才引进</a>
                                </li>
                                <li data-name="xyfc" data-table="td_classmate_classmate">
                                    <a href="<%=request.getContextPath()%>/managementServlet?method=forwardPage&title=xyfc">校友风采</a>
                                </li>
                                <li data-name="zxdt" data-table="td_firstnews">
                                    <a href="<%=request.getContextPath()%>/managementServlet?method=forwardPage&title=zxdt">最新动态</a>
                                </li>
                                <li data-name="tzgg" data-table="td_notice">
                                    <a href="<%=request.getContextPath()%>/managementServlet?method=forwardPage&title=tzgg">通知公告</a>
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
                            <a href="403.html">管理留言板</a>
                        </li>
                       
                    </ul>
                </div>
            </div>

			<script type="text/javascript">
            $(function(){
            	var target ='',tableName = '';
                $('div.left-menu-add ul.child-list').each(function(){
					var activeLink = $(this).find('li.active').length;
					if(activeLink){
	 					target = $(this).find('li.active a').html();
	 					tableName = $(this).find('li.active').attr('data-table');
						return false;
					}
					
                })
                $('ol.breadcrumb li.active span.target').html(target);
                $('ol.breadcrumb li.go-back a').attr('href',''+projectName+'/managementServlet?method=skipPage&jsp='+subStr+'&title='+subStr+'&pageNo=1&table='+tableName+' ');
                $('button.save-button').attr('data-table',tableName);
            })
            
            
			</script>







