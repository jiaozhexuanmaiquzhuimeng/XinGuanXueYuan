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
		$(function(){
			
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
		//发布新闻
function save(ele) {
	//获取标题
	var title = $("input[name='title']").val();
	//获取作者
	var author = $("input[name='author']").val();
	//获取表名
	var tableName = $(ele).attr('data-table');
	//获取正文
	var html = $('#editor_id').val();
	
	$.ajax({
		url:'${APP_PATH}/addServlet?method=add',
		data:{
			'title':title,
			'author':author,
			'html':html,
			'tableName':tableName
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
					<p style="color: red;">提示:为保证兼容性,若使用IE浏览器,可直接将word文档中的图片和文字直接粘贴到内容区域,非IE浏览器,请将word中的图片和文字分开上传.</p>
					<!-- 文章标题 -->
					<div class="form-group clearfix">
						<label for="" class="col-sm-2 control-label">标题</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="title" />
						</div>
					</div>
					
					<!-- 文章作者 -->
					<div class="form-group clearfix">
						<label for="" class="col-sm-2 control-label">作者</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="author" />
						</div>
					</div>
				
					<!-- 文章正文 -->
					<div class="form-group clearfix">
						<label for="" class="col-sm-2 control-label">内容</label>
						<div class="col-sm-10">
							<textarea id="editor_id" name="content" class="form-control" style="height: 400px;"></textarea>
						</div>
					</div>
					
					<!-- 提交按钮 -->
					<div class="form-group clearfix">
						<label for="" class="col-sm-2 control-label"></label>
						<div class="col-sm-10">
							<button type="button" onclick="save(this)"  class="btn btn-success save-button">提交</button>
						</div>
					</div>
					
				</div>

				<!-- 模态框 -->
				<div class="modal small hide fade" id="myModal" tabindex="-1"
					role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h3 id="myModalLabel">Delete Confirmation</h3>
					</div>
					<div class="modal-body">
						<p class="error-text">
							<i class="icon-warning-sign modal-icon"></i>Are you sure you want
							to delete the user?
						</p>
					</div>
					<div class="modal-footer">
						<button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
						<button class="btn btn-danger" data-dismiss="modal">Delete</button>
					</div>
				</div>

			</div>
		</div>
	</div>


	<footer>
		<hr>

		<p class="pull-right">
			德州学院 <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">信息管理学院</a>
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