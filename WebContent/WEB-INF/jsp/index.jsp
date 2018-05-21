<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>德州学院信息管理学院</title>
<!-- 标签的page属性值可以是相对路径URL或者绝对路径，但同时只能存在其中一种   -->
<jsp:include page="/WEB-INF/include/includeCss.jsp"></jsp:include>
<script>
	var index = 0;
	var timer = null;
	function changeImg() {
		var imgNode = $('.ppt-page').find('li');
		if (index == imgNode.length) {
			index = 0;
		}
		$(imgNode[index]).addClass('active');
		$(imgNode[index]).siblings().removeClass('active');
		var ppt = $('.ppt');
		ppt.hide();
		$(ppt[index]).show();

		index++;
	}
	function autoPlay() {
		timer = setInterval(function() {
			changeImg()
		}, 2000);
	}

	(function($, undefined) {
		$.fn.slide = function(options) {
			var defaules = {
				type1 : 'mouseover',
				type2 : 'mouseout',
				speed : 400,
				element1 : 'li',
				element2 : 'ul'
			};

			options = $.extend(defaules, options);

			$(this).each(
					function(index, el) {
						$(this).find(options.element1).on(
								options.type1,
								function(event) {
									$(this).find(options.element2).stop().show(
											options.speed);
								}).on(
								options.type2,
								function(event) {
									$(this).find(options.element2).stop().hide(
											options.speed);
								});
					});

		}
	})(jQuery);

	$(document).ready(function() {

		autoPlay();

		var pptWrap = document.querySelector(".ppt-wrap");
		pptWrap.onmouseenter = function() {
			clearInterval(timer);
		}
		pptWrap.onmouseleave = function() {
			autoPlay();
		}

		$('#Carousel').carousel({
			interval : 3000,
			pause : 'hover'
		});

		$('.ppt-page').find('li').on('mouseover', function(event) {
			event.preventDefault();
			$('.ppt-page').find('li').removeClass('active');
			$(this).addClass('active');
			$('.ppt').hide();
			$('.ppt').eq($(this).index()).show();
		});

		$('.getup').getUp();

		$('#Nav').slide();
	});
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
		<jsp:include page="/WEB-INF/include/dropDownList.jsp"></jsp:include>
	</div>
	<!--轮播图-->
	<div id="Carousel" class="carousel">
		<ol class="carousel-indicators">
			<li data-target="#Carousel" data-slide-to="0" class="active"></li>
			<li data-target="#Carousel" data-slide-to="1"></li>
			<li data-target="#Carousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="item active">
				<img class="carousel-img"
					src="<%=request.getContextPath()%>/img/3.png" alt="lunbo">
				<div class="carousel-caption">
				</div>
			</div>
			<div class="item">
				<img class="carousel-img"
					src="<%=request.getContextPath()%>/img/1.png" alt="lunbo">
				<div class="carousel-caption">
				</div>
			</div>
			<div class="item">
				<img class="carousel-img"
					src="<%=request.getContextPath()%>/img/5.png" alt="lunbo">
				<div class="carousel-caption">
				</div>
			</div> 
		</div>
		<a class="left carousel-control" href="#Carousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#Carousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>

	<!--主体-->
	<div id="content" class="container-fluid">
		<div class="container content main-bg">
			<!--第一行-->
			<div class="row">
				<div class="col-lg-8 col-sm-8 col-md-8 col-xs-12">
					<h1 class="news-title">
						最新动态<a href="<%=request.getContextPath()%>/firstNewsServlet?method=FirstNewsPage&table=td_firstnews&pageNo=1" class="more" ti target="_blank">更多</a>
					</h1>

					<div class="col-lg-5 col-sm-5 col-md-5 col-xs-12 ppt-wrap">
						<c:forEach items="${images }" var="image">
							<div class="ppt" style="display: block;">
								<a href="<%=request.getContextPath()%>/userServlet?method=contentPage&id=${image.imgId }&table=${image.imgTable }" target="_blank" title="${image.title }">
									<img src="<%=request.getContextPath()%>/img/${image.imgName}"
									class="img-responsive" alt="" id="${image.id}">
								</a>
								<p class="ppt-title">${image.title }</p>
							</div>
						</c:forEach>
						<ul class="ppt-page list-inline">
							<li class="active">1</li>
							<li>2</li>
							<li>3</li>
							<li>4</li>
						</ul>
					</div>
					<div class="col-lg-7 col-sm-7 col-md-7 col-xs-12">
						<ul class="news-list list-inline">
							<c:forEach items="${td_firstnews }" var="firstNew">
								<li><a title="${firstNew.title }"
									href="<%=request.getContextPath()%>/userServlet?method=contentPage&id=${firstNew.id }&table=td_firstnews"
									id="${firstNew.id }" target="_blank">${firstNew.title }</a><span
									class="pull-right">${firstNew.date }</span></li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
					<h1 class="news-title">
						通知公告<a href="<%=request.getContextPath()%>/noticeServlet?method=NoticePage&table=td_notice&pageNo=1" class="more" target="_blank">更多</a>
					</h1>
					<ul class="news-list list-inline">
						<c:forEach items="${td_notice }" var="notice">
							<li><a
								href="<%=request.getContextPath()%>/userServlet?method=contentPage&id=${notice.id }&table=td_notice"
								id="${notice.id }" title="${notice.title }" target="_blank">${notice.title }</a><span class="pull-right">${notice.date }</span></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<!--第二行-->
			<div class="row">
				<div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
					<h1 class="news-title">
						教学工作<a title="" href="<%=request.getContextPath()%>/educationServlet?method=EducationTeachingPage&table=td_education_teach&title=teach&pageNo=1" class="more" target="blank">更多</a>
					</h1>
					<ul class="news-list list-inline">
						<c:forEach items="${td_education_teach }" var="teachingWork">
							<li><a title="${teachingWork.title }"
								href="<%=request.getContextPath()%>/userServlet?method=contentPage&id=${teachingWork.id }&table=td_education_teach"
								id="${teachingWork.id }" target="_blank">${teachingWork.title }</a><span
								class="pull-right" >${teachingWork.date }</span></li>
						</c:forEach>
					</ul>
				</div>
				<div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
					<h1 class="news-title">
						科研工作<a href="<%=request.getContextPath()%>/scienceServlet?method=SciencePage&table=td_science_management&title=management&pageNo=1" class="more" target="_blank">更多</a>
					</h1>
					<ul class="news-list list-inline">
						<c:forEach items="${td_science_management }" var="scienceWork">
							<li><a title="${scienceWork.title }"
								href="<%=request.getContextPath()%>/userServlet?method=contentPage&id=${scienceWork.id }&table=td_science_management"
								id="${scienceWork.id }" target="_blank">${scienceWork.title }</a><span
								class="pull-right">${scienceWork.date }</span></li>
						</c:forEach>
					</ul>
				</div>
				<div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
					<h1 class="news-title">
						考研专栏<a href="<%=request.getContextPath()%>/educationServlet?method=EducationTeachingPage&table=td_education_stugraduate&title=stugraduate&pageNo=1" class="more" target="blank">更多</a>
					</h1>
					<ul class="news-list list-inline">
						<c:forEach items="${td_education_stugraduate }" var="graduate">
							<li><a title="${graduate.title }"
								href="<%=request.getContextPath()%>/userServlet?method=contentPage&id=${graduate.id }&table=td_education_stugraduate"
								id="${graduate.id }" target="_blank">${graduate.title }</a><span
								class="pull-right">${graduate.date }</span></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<!--第三行-->
			<div class="row">
				<div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
					<h1 class="news-title">
						党群工作<a href="<%=request.getContextPath()%>/testServlet?method=TestPage&table=td_Group_dynamics&title=dynamics&pageNo=1" class="more" target="_blank">更多</a>
					</h1>
					<ul class="news-list list-inline">
						<c:forEach items="${td_Group_dynamics }" var="party">
							<li><a title="${party.title }"
								href="<%=request.getContextPath()%>/userServlet?method=contentPage&id=${party.id }&table=td_Group_dynamics"
								id="${party.id }" target="_blank">${party.title }</a><span class="pull-right">${party.date }</span></li>
						</c:forEach>
					</ul>
				</div>
				<div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
					<h1 class="news-title">
						学生工作<a href="<%=request.getContextPath()%>/stumanageServlet?method=StumanagePage&table=td_stumanage_stuwork&title=stuwork&pageNo=1" class="more" target="_blank">更多</a>
					</h1>
					<ul class="news-list list-inline">
						<c:forEach items="${td_stumanage_stuwork }" var="studentWork">
							<li><a title="${studentWork.title }"
								href="<%=request.getContextPath()%>/userServlet?method=contentPage&id=${studentWork.id }&table=td_stumanage_stuwork"
								id="${studentWork.id }" target="_blank">${studentWork.title }</a><span
								class="pull-right">${studentWork.date }</span></li>
						</c:forEach>
					</ul>
				</div>
				<div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
					<h1 class="news-title">
						科技创新<a href="<%=request.getContextPath()%>/creativeServlet?method=CreativePage&table=td_creative&title=creative&pageNo=1" class="more" target="_blank">更多</a>
					</h1>
					<ul class="news-list list-inline">
						<c:forEach items="${td_creative }" var="creative">
							<li><a title="${creative.title }"
								href="<%=request.getContextPath()%>/userServlet?method=contentPage&id=${creative.id }&table=td_creative"
								id="${creative.id }" target="_blank">${creative.title }</a><span
								class="pull-right">${creative.date }</span></li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!--底部-->
	<jsp:include page="/WEB-INF/include/foot.jsp"></jsp:include>
</body>
</html>