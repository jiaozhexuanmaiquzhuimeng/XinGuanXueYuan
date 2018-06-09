<%@page import="com.xg.utils.CookieEncryptTool"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>管理系统登录</title>
<meta name="viewport" content="width=device-width">
<link href="<%=request.getContextPath()%>/public/css/base.css" rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/public/css/login.css" rel="stylesheet" type="text/css">
</head>
<body>

<div class="login">
<form action="<%=request.getContextPath()%>/userServlet?method=loginPageTwo&pageNo=1&table=td_firstnews" method="post" id="form">
	<div class="logo"></div>
    <div class="login_form">
    	<div class="user">
        	<input class="text_value" value="" name="username" type="text" id="username">
            <input class="text_value" value="" name="password" type="password" id="password">
        </div>
        <button class="button" id="submit" type="submit">登录</button>
    </div>
    
    <div id="tip"></div>    </form>
</div>
</body>
</html>
