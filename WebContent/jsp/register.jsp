<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>信管网站信息管理系统</title>
	<jsp:include page="/include/includeCss.jsp"></jsp:include>
</head>

<body class="templatemo-bg-gray">
	<h1 class="margin-bottom-15">新用户注册</h1>
	<div class="container">
		<div class="col-md-12">
			<form class="form-horizontal templatemo-create-account templatemo-container" role="form" action="#" method="post">
				<div class="form-inner">
					<div class="form-group">
						<div class="col-md-6">
							<label for="first_name" class="control-label">姓名</label>
							<input type="text" class="form-control" id="name" name="name" placeholder="请填写姓名">
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-12">
							<label for="username" class="control-label">电子邮箱</label>
							<input type="email" class="form-control" id="email" name="email" placeholder="请填写电子邮箱">
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-6">
							<label for="username" class="control-label">用户名</label>
							<input type="text" class="form-control" id="username" name="username" placeholder="请填写用户名">
						</div>

					</div>
					<div class="form-group">
						<div class="col-md-6">
							<label for="password" class="control-label">密码</label>
							<input type="password" class="form-control" id="password" name="password" placeholder="请填写密码">
						</div>
						<div class="col-md-6">
							<label for="password" class="control-label">重复密码</label>
							<input type="password" class="form-control" id="password_confirm" name="password_confirm" placeholder="请再次输入密码">
						</div>
					</div>
				

					<div class="form-group">
						<div class="col-md-12">
							<input type="submit" value="注册" class="btn btn-primary">
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>

</body>

</html>