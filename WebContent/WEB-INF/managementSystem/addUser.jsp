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
		
		function addDataToButton(ele,data1,data2){
			$(ele).attr('data-insert-state',data1);
			$(ele).attr('data-img-src',data2);
		}
		
		$(function(){
			var insertState = $('#js-insert-state');
			insertState.change(function(){
				var fristNewImg = $(window.frames[0].document).find("img"),
					saveButton = $('#js-save-button');
				var imgSrc = $(fristNewImg[0]).attr('src');
				this.checked?addDataToButton('#js-save-button','1',imgSrc):saveButton.removeAttr('data-insert-state data-img-src');
			})
			
			var editor = KindEditor.create('textarea[name="content"]', {
				allowFileManager : true,
				filterMode:false,
				allowImageUpload : true,
				uploadJson:'${APP_PATH}/kindeditor/jsp/upload_json.jsp',
				fileManagerJson : '${APP_PATH}/kindeditor/jsp/file_manager_json.jsp',
				afterBlur:function(){
					this.sync();
				}
			});
			$('.ke-container').css('width','100%');
			
		})
	</script>
	
<script>
function save(ele) {
	//获取标题
	var title = $("input[name='title']").val();
	//获取作者
	var author = $("input[name='author']").val();
	//获取表名
	var tableName = $(ele).attr('data-table');
	//获取插入状态
	var insert = $(ele).attr('data-insert-state');
	//获取图片链接
	var imgSrc = $(ele).attr('data-img-src');
	//获取正文
	var html = $('#editor_id').val();
	
	$.ajax({
		url:'${APP_PATH}/addServlet?method=add',
		data:{
			'title':title,
			'author':author,
			'html':html,
			'tableName':tableName,
			'imgSrc':imgSrc,
			'insert':insert
		},
		type:'POST',
		success:function(result){
			alert('文章发布成功!');
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
			<jsp:include page="include/includeAddLeftNav.jsp"></jsp:include>

			<div class="span9">
				<ol class="breadcrumb">
					<li><a href="#">网站栏目管理</a></li>
					<li><a href="#">发布新闻</a></li>
					<li class="active"><a href="#">发布到: </a><span class="target" style="color: green;"></span></li>
					<li class="pull-right go-back"><a>&lt;&nbsp;&nbsp;返回栏目管理</a></li>
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
					
					<form action="">
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
							  <input type="radio" name="radio" id="optionsRadios1" value="1" checked>
							 	 普通用户
							</label>
							<label class="radio">
							  <input type="radio" name="radio" id="optionsRadios2" value="2">
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
					</form>
					
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