<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">

<head>
	<style>
		input[type="text"]{
			display: block !important;
			width: 100% !important;
			padding: 6px 0 !important;
			text-indent: 1em;
		}
		.ke-container{
			width: 100% !important;
		}
	</style>
	<title>发布新闻</title>
	<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<jsp:include page="include/includeCss.jsp"></jsp:include>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/kindeditor/themes/default/default.css" />
	<script src="<%=request.getContextPath()%>/kindeditor/kindeditor-all-min.js"></script>
	<script src="<%=request.getContextPath()%>/kindeditor/lang/zh-CN.js"></script>
	<script type="text/javascript">
		<%
		  pageContext.setAttribute("APP_PATH", request.getContextPath());
		%>
		
	</script>
	
<script>
function save(ele) {
	//获取姓名
	var name = $("input[name='name']").val();
	//获取用户名
	var username = $("input[name='username']").val();
	//获取密码
	var password = $("input[name='password']").val();
	//获取角色
	var role = $("input[name='radio']:checked").val();
	
 	$.ajax({
 		url:'${APP_PATH}/userServlet?method=addUser',
 		data:{
 			'name':name,
 			'username':username,
 			'password':password,
 			'role':role,
 		},
 		dataType: "json",
 		type:'POST',
		success:function(data){
// 			if(data.msg == ""){
// 	 			alert('分配用户成功!');
// 	 			window.location.reload();
// 			}
// 			console.log(data);
 			//window.location.reload();
 			data.msg?alert('用户名已存在'):alert('用户分配成功！');
 			window.location.reload();
		}
		
 	})
	
}
	</script>
	
	
</head>

<!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
<!--[if IE 7 ]> <body class="ie ie7"> <![endif]-->
<!--[if IE 8 ]> <body class="ie ie8"> <![endif]-->
<!--[if IE 9 ]> <body class="ie ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<body>
	<!--<![endif]-->

	<jsp:include page="include/includeHeader.jsp"></jsp:include>


	<div class="container-fluid">

		<div class="row-fluid">
			<div class="span9" style="margin: 0 auto;float: none;">
				<ol class="breadcrumb">
					<li><a href="#">管理员操作</a></li>
					<li><a href="#">分配用户帐号</a></li>
					<li class="pull-right go-back"><a href="<%=request.getContextPath()%>/managementServlet?method=userManagement&title=yhgl&pageNo=1">&lt;&nbsp;&nbsp;返回用户管理</a></li>
					<style>
						li.go-back::before {
						    padding: 0 5px;
						    color: #ccc;
						    content: "" !important;
						}
					</style>
					
					<script>
							var pathName = window.document.location.pathname;
							var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
							
					</script>
					
				</ol>
				<div class="well">
					
					<!-- 用户名-->
					<div class="form-group clearfix">
						<label for="" class="col-sm-2 control-label">用户名:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="username" />
						</div>
					</div>
					
					<!-- 密码 -->
					<div class="form-group clearfix">
						<label for="" class="col-sm-2 control-label">密　码:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="password" />
						</div>
					</div>
					
					<!-- 姓名 -->
					<div class="form-group clearfix">
						<label for="" class="col-sm-2 control-label">姓　名:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="name" />
						</div>
					</div>
				
					<!-- 角色 -->
					<div class="form-group clearfix">
						<label for="" class="col-sm-2 control-label">角　色:</label>
						<div class="col-sm-10">
							<label class="radio">
							  <input type="radio" name="radio" id="optionsRadios1" value="0" checked>
							 	 普通用户
							</label>
							<label class="radio">
							  <input type="radio" name="radio" id="optionsRadios2" value="1">
							 	 管理员
							</label>
						</div>
					</div>
					
					<!-- 提交按钮 -->
					<div class="form-group clearfix">
						<label for="" class="col-sm-2 control-label"></label>
						<div class="col-sm-10">
							<button id="js-save-button" type="button" onclick="save(this)"  class="btn btn-success save-button">提交</button>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</div>


	<footer>
		<hr>

		<p class="pull-right">
			德州学院 <a href="http://www.dzu.edu.cn/" title="德州学院" target="_blank">信息管理学院</a>
		</p>


		<p>
			&copy; 2018 <a href="#"></a>
		</p>
	</footer>





	<!-- Le javascript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

</body>

</html>