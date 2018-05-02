<%@page import="com.xg.utils.CookieEncryptTool"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>网站信息管理系统</title>
    <jsp:include page="/WEB-INF/include/includeCss.jsp"></jsp:include>
</head>

<body class="templatemo-bg-gray">
	<%
		String userName = "";
		String passWord = "";
		Cookie[] c = request.getCookies();
		if(c != null){
			for(int i=0; i<c.length; i++){
				if("userName".equals(c[i].getName())){
					userName = CookieEncryptTool.decodeBase64(c[i].getValue());
				}else if("passWord".equals(c[i].getName())){
					passWord = CookieEncryptTool.decodeBase64(c[i].getValue());
				}
			}
		}else{
			userName = " ";
			passWord = " ";
		}
	%>
    <div class="container">
        <div class="col-md-12">
            <h1 class="margin-bottom-15">信管网站信息管理系统</h1>
            <form class="form-horizontal templatemo-container templatemo-login-form-1 margin-bottom-30" role="form" action="<%=request.getContextPath()%>/userServlet?method=loginPageTwo" method="post">
                <div class="form-group">
                    <div class="col-xs-12">
                        <div class="control-wrapper">
                            <label for="username" class="control-label fa-label">
                                <i class="fa fa-user fa-medium"></i>
                            </label>
                            <input type="text" class="form-control" id="username" name="userName" placeholder="用户名" value="<%=userName %>">
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-12">
                        <div class="control-wrapper">
                            <label for="password" class="control-label fa-label">
                                <i class="fa fa-lock fa-medium"></i>
                            </label>
                            <input type="password" class="form-control" id="password" name="passWord" placeholder="密码" value="<%=passWord %>">
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-12">
                        <div class="checkbox control-wrapper">
                            <label>
                                <input type="checkbox" name="rememberMe" value="true"> 记住密码
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-12">
                        <div class="control-wrapper">
                            <input type="submit" value="登录" class="btn btn-primary btn-block">
                        </div>
                    </div>
                </div>
                <hr>
                <div class="text-right">
                    <a href="<%=request.getContextPath()%>/userServlet?method=registerPage" class="templatemo-create-new">注册新用户
                        <i class="fa fa-arrow-circle-o-right"></i>
                    </a>
                </div>
            </form>

        </div>
    </div>
</body>

</html>