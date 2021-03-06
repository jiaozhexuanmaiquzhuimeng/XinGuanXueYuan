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
<title>文章编辑</title>
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

<script>
	var indexTable = href.indexOf('table');
	var targetTable = href.slice(indexTable);
	var splitTable = targetTable.split('&');
	var subTable = splitTable[0].substr(6);
	$(function(){
		$('ol.breadcrumb li.go-back a').attr('href',''+projectName+'/managementServlet?method=skipPage&jsp='+subStr+'&title='+subStr+'&pageNo=1&table='+subTable+' ');
	})
</script>

<script type="text/javascript">
	
<%pageContext.setAttribute("APP_PATH", request.getContextPath());%>
	$(function() {

		var editor = KindEditor
				.create(
						'textarea[name="content"]',
						{
							height:'1200',
							allowFileManager : true,
							filterMode : false,
							allowImageUpload : true,
							uploadJson : '${APP_PATH}/kindeditor/jsp/upload_json.jsp',
							fileManagerJson : '${APP_PATH}/kindeditor/jsp/file_manager_json.jsp',
							afterBlur : function() {
								this.sync();
							}
						});
		$('.ke-container').css('width', '100%');

		var jsContent = $('#js-content');
		// 设置HTML内容
		editor.html(jsContent.html());
		editor.focus('editor_id');
		jsContent.remove();
	})
</script>

<script>
	//更新新闻
	function update(ele) {
		//获取ID
		var id = $("input[name='id']").val();
		//获取标题
		var title = $("input[name='title']").val();
		//获取作者
		var author = $("input[name='author']").val();
		//获取表名
		var tableName = $(ele).attr('data-table1');
		//获取正文
		var html = $('#editor_id').val();

		$.ajax({
			url : '${APP_PATH}/addServlet?method=update',
			data : {
				'id' : id,
				'title' : title,
				'author' : author,
				'html' : html,
				'tableName' : tableName
			},
			type : 'POST',
			success : function(result) {
				alert('文章更新成功!');
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

			<div class="span9" style="margin: 0 auto;float:none;">
				<ol class="breadcrumb">
					<li><a href="#">网站栏目管理</a></li>
					<li class="active">
						编辑新闻
					</li>
					<li class="pull-right go-back"><a>&lt;&nbsp;&nbsp;返回栏目管理</a></li>
					<style>
						li.go-back::before {
							padding: 0 5px;
							color: #ccc;
							content: "" !important;
						}
					</style>

					

				</ol>
				<div class="well">
					<p style="color: red;">提示:为保证兼容性,若使用IE浏览器,可直接将word文档中的图片和文字直接粘贴到内容区域,非IE浏览器,请将word中的图片和文字分开上传.</p>
					<c:forEach items="${tools }" var="tool">
						<!-- 文章id -->
						<div class="form-group clearfix">
							<label for="" class="col-sm-2 control-label">ID</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="id"
									value="${id }" disabled="disabled" />
							</div>
						</div>
						<!-- 文章标题 -->
						<div class="form-group clearfix">
							<label for="" class="col-sm-2 control-label">标题</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="title"
									value="${tool.title }" />
							</div>
						</div>

						<!-- 文章作者 -->
						<div class="form-group clearfix">
							<label for="" class="col-sm-2 control-label">作者</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="author"
									value="${tool.author }" />
							</div>
						</div>

						<!-- 文章正文 -->
						<div class="form-group clearfix">
							<label for="" class="col-sm-2 control-label">内容</label>
							<div class="col-sm-10">
								<textarea id="editor_id" name="content" class="form-control"
									style="height: 400px;"></textarea>
								<div id="js-content" style="display: none;">${tool.content}</div>
							</div>
						</div>

						<!-- 提交按钮 -->
						<div class="form-group clearfix">
							<label for="" class="col-sm-2 control-label"></label>
							<div class="col-sm-10">
								<button type="button" onclick="update(this)"
									class="btn btn-success save-button" data-table1="${table }">更新</button>
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