<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>德州学院信息管理学院</title>
   <jsp:include page="/WEB-INF/include/includeCss.jsp"></jsp:include>
    <script>
        ;
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
            <jsp:include page="/WEB-INF/include/dropDownList.jsp"></jsp:include>
    </div>
</div>
    <!--主体-->
    <div id="content" class="container-fluid">

        <!-- 返回首页 -->
        <div class="container" style="padding: 0 0;">

            <p>
                <a href="<%=request.getContextPath()%>/userServlet?method=showTitle" class="back-index">&lt; 返回首页</a>
            </p>
        </div>


        <div class="container main-bg">

            <!-- 文章标题 -->
            <p>
                <h4 class="article-title">
                	${firstNews.title }
                	${notice.title }
                	${teachingWork.title }
                	${scienceWork.title }
                	${graduate.title }
                	${party.title }
                	${studentWork.title }
                	${creative.title }
                	${collegeIntroduction.title }
                </h4>
            </p>

            <!-- 文章其它信息 -->
            <p class="article-info">
                <span>[</span>

                <abbr>作者:
                    <span class="author">
                    	${firstNews.author }
                    	${notice.author }
                    	${teachingWork.author }
                    	${scienceWork.author }
                    	${graduate.author }
                    	${party.author }
                    	${studentWork.author }
                    	${creative.author }
                    	${collegeIntroduction.author }
                    </span> | 时间:
                    <span class="time-clock">
                    	${firstNews.date }
                    	${notice.date }
                    	${teachingWork.date }
                    	${scienceWork.date }
                    	${graduate.date }
                    	${party.date }
                    	${studentWork.date }
                    	${creative.date }
                    	${collegeIntroduction.date }
                    </span>
                </abbr>

                <span>]</span>
            </p>

            <!-- 文章正文 -->
            <div class="panel">
                <div class="panel-body">
                    <section class="article-content">
                        ${firstNews.content }
                        ${notice.content }
                        ${teachingWork.content }
                        ${scienceWork.content }
                        ${graduate.content }
                        ${party.content }
                        ${studentWork.content }
                        ${creative.content }
                        ${collegeIntroduction.content }
                    </section>
                </div>
            </div>

        </div>
    </div>




    <!--底部-->
    <jsp:include page="/WEB-INF/include/foot.jsp"></jsp:include>
</body>

</html>