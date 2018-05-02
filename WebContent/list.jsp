<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>更多</title>
   	<jsp:include page="/include/includeCss.jsp"></jsp:include>
    <script>
        (function ($, undefined) {
            $.fn.slide = function (options) {
                var defaules = {
                    type1: 'mouseover',
                    type2: 'mouseout',
                    speed: 400,
                    element1: 'li',
                    element2: 'ul'
                };

                options = $.extend(defaules, options);

                $(this).each(function (index, el) {
                    $(this).find(options.element1).on(options.type1, function (event) {
                        event.preventDefault();
                        $(this).find(options.element2).stop().show(options.speed);
                    }).on(options.type2, function (event) {
                        event.preventDefault();
                        $(this).find(options.element2).stop().hide(options.speed);
                    });
                });

            }
        })(jQuery);

        $(document).ready(function () {
            $('#Carousel').carousel({
                interval: 3000,
                pause: 'hover'
            });


            $('.ppt-page').find('li').on('mouseover', function (event) {
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
                <img src="img/logo4.png" alt="logo" class="img-responsive">
                <ul class="banner-list list-inline hidden-xs">
                    <li>
                        <a href="#">德州学院</a>
                    </li>
                    <li>
                        <a href="#">访问旧版</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-collapse">
                    <span class="sr-only">切换导航</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <jsp:include page="/include/dropDownList.jsp"></jsp:include>
    </div>
</div>

    <!--主体-->
    <div id="content">
			<div class="container">
			
			<div class="way-nav">
				<ol class="breadcrumb">
				  <li><a href="#">首页</a></li>
				  <li><a href="#">学院概况</a></li>
				  <li class="active">学院简介</li>
		  		</ol>
			</div>
			
				
				
				<div class="row">
					<div class="col-md-3 left-menu">
						
						<div class="menu-head"><span><i class="glyphicon glyphicon-home"></i>学院概况</span></div>
						
						<div class="menu-content">
						
							 <ul>
							 	<li><a href="">学院简介<i class="glyphicon glyphicon-chevron-right"></i></a></li>
							 	<li><a href="">组织机构<i class="glyphicon glyphicon-chevron-right"></i></a></li>
							 	<li><a href="">师资队伍<i class="glyphicon glyphicon-chevron-right"></i></a></li>
							 </ul>
						
						</div>
						
						
					</div>
			
					<div class="col-md-9">
						
						<div class="right-list">

							<ul class="list-item">
								<li><a href="">关于申报2018年度 “北京大学研究生学术交流基金”的通知</a></li>
								<li><a href="">关于申报2018年度 “北京大学研究生学术交流基金”的通知</a></li>
								<li><a href="">关于申报2018年度 “北京大学研究生学术交流基金”的通知</a></li>
								<li><a href="">关于申报2018年度 “北京大学研究生学术交流基金”的通知</a></li>
								<li><a href="">关于申报2018年度 “北京大学研究生学术交流基金”的通知</a></li>
								<li><a href="">关于申报2018年度 “北京大学研究生学术交流基金”的通知</a></li>
								<li><a href="">关于申报2018年度 “北京大学研究生学术交流基金”的通知</a></li>
								<li><a href="">关于申报2018年度 “北京大学研究生学术交流基金”的通知</a></li>
							</ul>

						</div>
						
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
                            <li>
                                <a href="#"> 实验中心</a>
                            </li>
                            <li>
                                <a href="#"> 专题教育</a>
                            </li>
                            <li>
                                <a href="#"> 工作流程</a>
                            </li>
                            <li>
                                <a href="#"> 办公电话</a>
                            </li>
                            <li>
                                <a href="#"> 学生管理系统</a>
                            </li>
                            <li>
                                <a href="#"> 教务系统</a>
                            </li>
                            <li>
                                <a href="#">《致远方的母亲》</a>
                            </li>
                            <li>
                                <a href="#"> 学院微信平台</a>
                            </li>

                        </ul>
                    </div>
                    <div class="col-lg-4 col-sm-4 col-md-4 col-xs-12 footer-logo">
                        <img src="img/footer-logo.png" class="img-responsive" alt="logo">
                    </div>
                    <div class="col-lg-4 col-sm-4 col-md-4 col-xs-12 footer-r text-center">
                        <img class="email" src="img/email.png" class="img-responsive" alt="email">
                        <p>书记信箱：dzxywfs@163.com </p>
                        <p>院长信箱：dzxylili@163.com</p>
                    </div>
                </div>
            </div>
            <div class="link text-center">
                <p class="link-p">友情链接：</p>
                <ul class="link-list list-inline">
                    <li>
                        <a href="#">教育网</a>
                    </li>
                    <li>
                        <a href="#">山东省教育厅</a>
                    </li>
                    <li>
                        <a href="#">研招网</a>
                    </li>
                    <li>
                        <a href="#">中国知网</a>
                    </li>
                    <li>
                        <a href="#">去大赛网</a>
                    </li>
                    <li>
                        <a href="#">我要自学网</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="footer-bottom">
            <p class="address">德州学院信息管理学院 联系地址：德州学院信息管理学院 邮编：253023 电话：0534-8985842</p>
        </div>
    </div>
    <div class="getup">
        <span class="glyphicon glyphicon-chevron-up"></span>
        <div class="markup"></div>
    </div>
</body>

</html>