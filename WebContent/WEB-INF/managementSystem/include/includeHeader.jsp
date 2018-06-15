<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="navbar">
        <div class="navbar-inner">
            <div class="container-fluid">
                <ul class="nav pull-right">
					<li class="userinfo weclome"><span>欢迎!</span></li>
					<li class="userinfo username">
					
					<span>
						<i class="fa fa-user"></i>
						&nbsp;&nbsp;${sessionScope.name }
					</span>
					</li>
					<li class="userinfo role">
						
						<span>
							<i class="fa fa-vcard"></i>
							&nbsp;&nbsp;${sessionScope.role }
						</span>
					</li>
					<li class="userinfo role">
						
						<span>
							<i class="fa fa-arrow-right"></i>
							<a href="<%=request.getContextPath()%>/userServlet?method=showTitle&creative=td_creative&graduate=td_education_stugraduate&Group=td_Group_dynamics&sciencework=td_science_management&studentwork=td_stumanage_stuwork&firstnews=td_firstnews&notice=td_notice&teachingwork=td_education_teach&imgTable=td_image" style="color: #fff;">登出</a>
						</span>
					</li>
                </ul>
                <a class="brand" href="index.html">
                    <span class="first">德州学院</span>
                    <span class="second">信息管理学院</span>
                </a>
            </div>
        </div>
    </div>
    
    <style>
    	li.userinfo span{
    		color:#fff;
    		padding:0 10px;
    		display: inline-block;
    		min-height: 40px;
    		line-height: 40px;
    	}
    </style>