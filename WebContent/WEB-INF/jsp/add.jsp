<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>添加内容</title>
<!-- 标签的page属性值可以是相对路径URL或者绝对路径，但同时只能存在其中一种   -->
<jsp:include page="/WEB-INF/include/includeCss.jsp"></jsp:include>
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
	
	$("select[name='section']").each(function(){
		$($(this).change(function(){
			$('.save-button').attr('data-section',$(this).val());
		}))
	})
})

function save(ele) {
	//获取标题
	var title = $("input[name='title']").val();
	//获取作者
	var author = $("input[name='author']").val();
	//获取表名
	var tableName = $(ele).attr('data-section');
	
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
		<div class="form-group">
				<label for="" class="col-sm-2 control-label">版块</label>
				<div class="col-sm-12">
					
					<div class="col-md-3">
						最新动态
						<select name="section">
							<option style="display: none;">选择版块</option>
							<option value="td_firstnews">最新动态</option>
						</select>
					</div>
					
					<div class="col-md-3">
						科技创新
						<select name="section">
							<option style="display: none;">选择版块</option>
							<option value="td_creative">科技创新</option>
						</select>
					</div>
					
					<div class="col-md-3">
						学校概况
						<select name="section">
							<option style="display: none;">选择版块</option>
							<option value="td_college_introduction ">学院简介</option>
							<option value="td_college_organization ">组织机构</option>
							<option value="td_college_teacherStroop ">师资队伍</option>
						</select>
					</div>
					
					<div class="col-md-3">
						教务教学
						<select name="section">
							<option style="display: none;">选择版块</option>
							<option value="td_education_major ">专业建设</option>
							<option value="td_education_teach">教学工作</option>
							<option value="td_education_stugraduate">考研工作</option>
						</select>
					</div>
					
					<div class="col-md-3">
						招生就业
						<select name="section">
							<option style="display: none;">选择版块</option>
							<option value="td_Rmstu_admissions ">招生工作</option>
							<option value="td_Rmstu_employment">就业工作</option>
						</select>
					</div>
					
					<div class="col-md-3">
					科研工作
					<select name="section">
						<option style="display: none;">选择版块</option>
						<option value="td_science_management">科研管理</option>
						<option value="td_science_keylaboratory">重点实验室</option>
						<option value="td_science_organization">学术组织</option>
						<option value="td_science_communication">学术交流</option>
						<option value="td_science_international">国际办学</option>
						<option value="td_science_service">社会服务</option>
					</select>
					</div>
					
					<div class="col-md-3">
					
						学生管理
					<select name="section">
						<option style="display: none;">选择版块</option>
						<option value="td_stumanage_stuwork">学生工作</option>
						<option value="td_stumanage_league">社团活动</option>
						<option value="td_stumanage_practice">心理健康</option>
						<option value="td_stumanage_electricity">资助工作</option>
					</select>
					
					</div>
					
					<div class="col-md-3">
					
						党群建设
					<select name="section">
						<option style="display: none;">选择版块</option>
						<option value="td_test_center">党团动态</option>
						<option value="td_test_money">工会之家</option>
						<option value="td_test_resources">学习园地</option>
					</select>
					</div>
					
					<div class="col-md-3">
					
						人才引进
					<select name="section">
						<option style="display: none;">选择版块</option>
						<option value="td_talent_talent">人才引进</option>
					</select>
					</div>
					
					<div class="col-md-3">
					
						校友风采
					<select name="section">
						<option style="display: none;">选择版块</option>
						<option value="td_classmate_classmate">校友风采</option>
					</select>
					</div>
					
					<div class="col-md-3">
					
						通知公告
					<select name="section">
						<option style="display: none;">选择版块</option>
						<option value="td_notice">通知公告</option>
					</select>
					</div>
					
					
				</div>
			</div>
			
			
			<div class="form-group">
				<label for="" class="col-sm-2 control-label">标题</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="title" />
				</div>
			</div>
			
			<div class="form-group">
				<label for="" class="col-sm-2 control-label">作者</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="author" />
				</div>
			</div>
			
			<div class="form-group">
				<label for="" class="col-sm-2 control-label">内容</label>
				<div class="col-sm-10">
					<textarea id="editor_id" name="content" class="form-control" style="height: 400px;"></textarea>
				</div>
			</div>
			
			<div class="form-group">
				<label for="" class="col-sm-2 control-label"></label>
				<div class="col-sm-10">
					<button type="button" onclick="save(this)"  class="btn btn-success save-button">提交</button>
				</div>
			</div>
		
		</div>
	</div>
	<!--底部-->
	<jsp:include page="/WEB-INF/include/foot.jsp"></jsp:include>
</body>
</html>