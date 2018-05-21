<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>写信</title>
<!-- 标签的page属性值可以是相对路径URL或者绝对路径，但同时只能存在其中一种   -->
<jsp:include page="/WEB-INF/include/includeCss.jsp"></jsp:include>

</head>

<script type="text/javascript">
$(function(){
	
	$('.btn-save').click(function(event){
		var btnSave = $(this);
		
		$('.mail-form .mail-item').each(function(){
			
				if($(this).val() == '' || $(this).parents('div.form-group').siblings().find('.mail-item').val()=='' ){
					event.preventDefault();
					alert('内容不能存在空项');
					return false;
				}else{
					alert('提交成功!');
					return false;
				}
		})
		
		
		
	})
	
})

</script>
<body>
	<!--头部-->
	<div id="header" class="navbar-default" role="navigation">
		<div class="container-fluid banner">
			<div class="container banner-inner">
				<img src="<%=request.getContextPath()%>/img/logo4.png" alt="logo"
					class="img-responsive">
				<ul class="banner-list list-inline hidden-xs">
					<li><a
						href="<%=request.getContextPath()%>/userServlet?method=loginPage">管理员登陆</a></li>
					<li><a href="http://www.dzu.edu.cn/">德州学院</a></li>
					<li><a href="http://jsjx.dzu.edu.cn/">访问旧版</a></li>
				</ul>
			</div>
		</div>
	</div>

	<!--主体-->
	<div id="content" class="container-fluid">
	
		<div class="container content main-bg">
		
			<form class="mail-form" action="" method="post" style="display: block; padding: 15px 0;">
				<div class="form-group clearfix">
			    <label for="exampleInputEmail1" class="col-md-2">写信给:</label>
			   	<div class="col-md-10">
			   		<select name="" id="" class="form-control">
			   			<option value="">院长</option>
			   			<option value="">书记</option>
			   		</select>
			   	</div>
 			</div>
 			
 			<div class="form-group clearfix">
			    <label for="exampleInputEmail1" class="col-md-2">你的姓名</label>
			   	<div class="col-md-10">
			   		 <input type="text" class="form-control mail-item" id="Name" placeholder="你的姓名">
			   		 <span class="error-message" style="color:red;"></span>
			   	</div>
 			</div>
 			
 			<div class="form-group clearfix">
			    <label for="exampleInputEmail1" class="col-md-2">你的邮箱</label>
			   	<div class="col-md-10">
			   		  <input type="text" class="form-control mail-item" id="Email" placeholder="Email">
			   		  <span class="error-message" style="color:red;"></span>
			   	</div>
 			</div>
			
			<div class="form-group clearfix">
			    <label for="exampleInputEmail1" class="col-md-2">电话号码</label>
			   	<div class="col-md-10">
			   		 <input type="text" class="form-control mail-item" id="TEL" placeholder="电话号码">
			   		 <span class="error-message" style="color:red;"></span>
			   	</div>
 			</div>
 			
 			<div class="form-group clearfix">
			    <label for="exampleInputEmail1" class="col-md-2">手机号码</label>
			   	<div class="col-md-10">
			   		 <input type="text" class="form-control mail-item" id="Phone" placeholder="手机号码">
			   		 <span class="error-message" style="color:red;"></span>
			   	</div>
 			</div>
 			
 			<div class="form-group clearfix">
			    <label for="exampleInputEmail1" class="col-md-2">信件主题</label>
			   	<div class="col-md-10">
			   		 <input type="text" class="form-control mail-item" id="Mail-title" placeholder="信件主题">
			   		 <span class="error-message" style="color:red;"></span>
			   	</div>
 			</div>
 			
 			<div class="form-group clearfix">
			    <label for="exampleInputEmail1" class="col-md-2">信件内容</label>
			   	<div class="col-md-10">
			   		 <textarea class="form-control mail-item" id="content"></textarea>
			   		 <span class="error-message" style="color:red;"></span>
			   	</div>
 			</div>
 			
 			<div class="form-group clearfix">
			    <label for="exampleInputEmail1" class="col-md-2"></label>
			   	<div class="col-md-10">
			   		<button class="btn btn-success btn-sm btn-save error">提交</button>
			   		<input type="reset" class="btn btn-info btn-sm" value="重置" />
			   	</div>
 			</div>
			</form>
			
		</div>
		
	</div>
	<!--底部-->
	<jsp:include page="/WEB-INF/include/foot.jsp"></jsp:include>
</body>
</html>