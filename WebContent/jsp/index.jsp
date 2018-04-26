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
<jsp:include page="/include/includeCss.jsp"></jsp:include>
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
		}, 1000);
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
									event.preventDefault();
									$(this).find(options.element2).stop().show(
											options.speed);
								}).on(
								options.type2,
								function(event) {
									event.preventDefault();
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
					<li><a href="#">德州学院</a></li>
					<li><a href="#">访问旧版</a></li>
				</ul>
			</div>
		</div>
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#example-navbar-collapse">
					<span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="example-navbar-collapse">
				<ul class="nav navbar-nav" id="Nav">
					<li><a href="#">学院首页<span class="nav-slider"></span></a></li>
					<li><a href="#" class="dropdown-toggle" data-toggle="dropdown">学院概况<span
							class="nav-slider"></span><b class="caret"></b></a>

						<ul class="dropdown-menu">
							<li><a href="#">学院简介</a></li>
							<li><a href="#">领导班子</a></li>
							<li><a href="#">机构设置</a></li>
							<li><a href="#">师资队伍</a></li>
							<li><a href="#">历任领导</a></li>
						</ul></li>
					<li><a href="#">教务教学 <span class="nav-slider"></span><b
							class="caret"></b>
					</a>

						<ul class="dropdown-menu">
							<li><a href="#">科学研究</a></li>
							<li><a href="#">师资队伍</a></li>
							<li><a href="#">历任领导</a></li>
							<li><a href="#">学院简介</a></li>
							<li><a href="#">领导班子</a></li>
							<li><a href="#">招生就业</a></li>
							<li><a href="#">机构设置</a></li>
						</ul></li>
					<li><a href="#">科学研究 <span class="nav-slider"></span>
					</a></li>
					<li><a href="#">招生就业<span class="nav-slider"></span></a></li>
					<li><a href="#">党群建设<span class="nav-slider"></span></a></li>
					<li><a href="#">学生工作<span class="nav-slider"></span></a></li>
					<li><a href="#" class="dropdown-toggle" data-toggle="dropdown">规章制度<span
							class="nav-slider"></span><b class="caret"></b></a>

						<ul class="dropdown-menu">
							<li><a href="#">学院简介</a></li>
							<li><a href="#">领导班子</a></li>
							<li><a href="#">机构设置</a></li>
							<li><a href="#">师资队伍</a></li>
							<li><a href="#">历任领导</a></li>
						</ul></li>
					<li><a href="#">校友风采<span class="nav-slider"></span></a></li>
				</ul>
			</div>
		</div>
	</div>
	<!--轮播图-->
	<div id="Carousel" class="carousel">
		<ol class="carousel-indicators">
			<li data-target="Carousel" data-slide-to="0" class="active"></li>
			<li data-target="Carousel" data-slide-to="1"></li>
			<li data-target="Carousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="item active">
				<img class="carousel-img"
					src="<%=request.getContextPath()%>/img/carousel-1.jpg" alt="lunbo">
				<div class="carousel-caption">
					<h3>轮播图1</h3>
				</div>
			</div>
			<div class="item">
				<img class="carousel-img"
					src="<%=request.getContextPath()%>/img/carousel-1.jpg" alt="lunbo">
				<div class="carousel-caption">
					<h3>轮播图2</h3>
				</div>
			</div>
			<div class="item">
				<img class="carousel-img"
					src="<%=request.getContextPath()%>/img/carousel-1.jpg" alt="lunbo">
				<div class="carousel-caption">
					<h3>轮播图3</h3>
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
						最新动态<a href="#" class="more">更多</a>
					</h1>

					<div class="col-lg-5 col-sm-5 col-md-5 col-xs-12 ppt-wrap">
						<c:forEach items="${images }" var="image">
							<div class="ppt" style="display: block;">
								<img src="<%=request.getContextPath()%>/img/${image.imgName}"
									class="img-responsive" alt="" id="${image.id}">
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
							<c:forEach items="${firstNews }" var="firstNew">
								<li><a href="#" id="${firstNew.id }">${firstNew.title }</a><span
									class="pull-right">${firstNew.date }</span></li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
					<h1 class="news-title">
						通知公告<a href="#" class="more">更多</a>
					</h1>
					<ul class="news-list list-inline">
						<c:forEach items="${notices }" var="notice">
							<li><a href="#" id="${notice.id }">${notice.title }</a><span
								class="pull-right">${notice.date }</span></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<!--第二行-->
			<div class="row">
				<div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
					<h1 class="news-title">
						教学工作<a href="#" class="more">更多</a>
					</h1>
					<ul class="news-list list-inline">
						<c:forEach items="${teachingWorks }" var="teachingWork">
							<li><a href="#" id="${teachingWork.id }">${teachingWork.title }</a><span
								class="pull-right">${teachingWork.date }</span></li>
						</c:forEach>
					</ul>
				</div>
				<div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
					<h1 class="news-title">
						科研工作<a href="#" class="more">更多</a>
					</h1>
					<ul class="news-list list-inline">
						<c:forEach items="${scienceWorks }" var="scienceWork">
							<li><a href="#" id="${scienceWork.id }">${scienceWork.title }</a><span
								class="pull-right">${scienceWork.date }</span></li>
						</c:forEach>
					</ul>
				</div>
				<div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
					<h1 class="news-title">
						考研专栏<a href="#" class="more">更多</a>
					</h1>
					<ul class="news-list list-inline">
						<c:forEach items="${graduates }" var="graduate">
							<li><a href="#" id="${graduate.id }">${graduate.title }</a><span
								class="pull-right">${graduate.date }</span></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<!--第三行-->
			<div class="row">
				<div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
					<h1 class="news-title">
						党群工作<a href="#" class="more">更多</a>
					</h1>
					<ul class="news-list list-inline">
						<c:forEach items="${partys }" var="party">
							<li><a href="#" id="${party.id }">${party.title }</a><span
								class="pull-right">${party.date }</span></li>
						</c:forEach>
					</ul>
				</div>
				<div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
					<h1 class="news-title">
						学生工作<a href="#" class="more">更多</a>
					</h1>
					<ul class="news-list list-inline">
						<c:forEach items="${studentWorks }" var="studentWork">
							<li><a href="#" id="${studentWork.id }">${studentWork.title }</a><span
								class="pull-right">${studentWork.date }</span></li>
						</c:forEach>
					</ul>
				</div>
				<div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
					<h1 class="news-title">
						科技创新<a href="#" class="more">更多</a>
					</h1>
					<ul class="news-list list-inline">
						<c:forEach items="${creatives }" var="creative">
							<li><a href="#" id="${creative.id }">${creative.title }</a><span
								class="pull-right">${creative.date }</span></li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!--底部-->
	<div id="footer">
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-sm-4 col-md-4 col-xs-12 footer-l">
						<ul class="list-inline footer-list">
							<li><a href="#"> 实验中心</a></li>
							<li><a href="#"> 专题教育</a></li>
							<li><a href="#"> 工作流程</a></li>
							<li><a href="#"> 办公电话</a></li>
							<li><a href="#"> 学生管理系统</a></li>
							<li><a href="#"> 教务系统</a></li>
							<li><a href="#">《致远方的母亲》</a></li>
							<li><a href="#"> 学院微信平台</a></li>

						</ul>
					</div>
					<div class="col-lg-4 col-sm-4 col-md-4 col-xs-12 footer-logo">
						<img src="<%=request.getContextPath()%>/img/footer-logo.png"
							class="img-responsive" alt="logo">
					</div>
					<div
						class="col-lg-4 col-sm-4 col-md-4 col-xs-12 footer-r text-center">
						<img class="email"
							src="<%=request.getContextPath()%>/img/email.png"
							class="img-responsive" alt="email">
						<p>书记信箱：dzxywfs@163.com</p>
						<p>院长信箱：dzxylili@163.com</p>
					</div>
				</div>
			</div>
			<div class="link text-center">
				<p class="link-p">友情链接：</p>
				<ul class="link-list list-inline">
					<li><a href="#">教育网</a></li>
					<li><a href="#">山东省教育厅</a></li>
					<li><a href="#">研招网</a></li>
					<li><a href="#">中国知网</a></li>
					<li><a href="#">去大赛网</a></li>
					<li><a href="#">我要自学网</a></li>
				</ul>
			</div>
		</div>
		<div class="footer-bottom">
			<p class="address">德州学院信息管理学院 联系地址：德州学院信息管理学院 邮编：253023
				电话：0534-8985842</p>
		</div>
	</div>
	<div class="getup">
		<span class="glyphicon glyphicon-chevron-up"></span>
		<div class="markup"></div>
	</div>
</body>
</html>