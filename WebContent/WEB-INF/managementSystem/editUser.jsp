<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">

<head>
<style>
input[type="text"] {
	display: block !important;
	width: 100% !important;
	padding: 6px 0 !important;
	text-indent: 1em;
}

.ke-container {
	width: 100% !important;
}
</style>
<title>修改用户信息</title>
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<jsp:include page="include/includeCss.jsp"></jsp:include>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/kindeditor/themes/default/default.css" />
<script
	src="<%=request.getContextPath()%>/kindeditor/kindeditor-all-min.js"></script>
<script src="<%=request.getContextPath()%>/kindeditor/lang/zh-CN.js"></script>

<script type="text/javascript">
	
<%pageContext.setAttribute("APP_PATH", request.getContextPath());%>
</script>

<script>
	var indexTable = href.indexOf('table');
	var targetTable = href.slice(indexTable);
	var splitTable = targetTable.split('&');
	var subTable = splitTable[0].substr(6);
	$(function() {
		$('ol.breadcrumb li.go-back a').attr(
				'href',
				'${APP_PATH}/managementServlet?method=userManagement&title=yhgl&pageNo=1');
	})
</script>


<script>
	//修改用户
	function update(ele) {
		//获取ID
		var id = $("input[name='id']").val();
		//获取用户名
		var userName = $("input[name='userName']").val();
		//获取姓名
		var name = $("input[name='name']").val();
		//获取密码
		var password = $("input[name='password']").val();

		$.ajax({
			url : '${APP_PATH}/managementServlet?method=editUser',
			data : {
				'id' : id,
				'userName' : userName,
				'name' : name,
				'password' : password
			},
			type : 'POST',
			success : function(result) {
				alert('修改成功!');
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

			<div class="span9" style="margin: 0 auto; float: none;">
				<ol class="breadcrumb">
					<li><a href="#">管理员操作</a></li>
					<li class="active">用户管理</li>
					<li class="pull-right go-back"><a>&lt;&nbsp;&nbsp;返回用户管理</a></li>
					<style>
li.go-back::before {
	padding: 0 5px;
	color: #ccc;
	content: "" !important;
}
</style>



				</ol>
				<div class="well">
					<c:forEach items="${users }" var="user">
						<!-- 用户id -->
						<div class="form-group clearfix">
							<label for="" class="col-sm-2 control-label">ID</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="id"
									value="${user.id }" disabled="disabled" />
							</div>
						</div>
						<!-- 用户名 -->
						<div class="form-group clearfix">
							<label for="" class="col-sm-2 control-label">用户名</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name=userName
									value="${user.userName }" />
							</div>
						</div>

						<!-- 姓名 -->
						<div class="form-group clearfix">
							<label for="" class="col-sm-2 control-label">姓名</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="name"
									value="${user.name }" />
							</div>
						</div>

						<!-- 密码 -->
						<div class="form-group clearfix">
							<label for="" class="col-sm-2 control-label">密码</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="password"
									value="${user.passWord }" />
							</div>
						</div>

						<!-- 提交按钮 -->
						<div class="form-group clearfix">
							<label for="" class="col-sm-2 control-label"></label>
							<div class="col-sm-10">
								<button type="button" onclick="update(this)"
									class="btn btn-success save-button">修改</button>
							</div>
						</div>
					</c:forEach>
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