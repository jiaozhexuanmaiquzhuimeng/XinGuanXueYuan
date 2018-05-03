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
                <a href="<%=request.getContextPath()%>/userServlet?method=showTitle&creative=td_creative&graduate=td_graduate&party=td_party&sciencework=td_sciencework&studentwork=td_studentwork&firstnews=td_firstnews&notice=td_notice&teachingwork=td_teachingwork" class="back-index">&lt; 返回首页</a>
            </p>
        </div>


        <div class="container main-bg">

            <!-- 文章标题 -->
            <p>
                <h4 class="article-title">
                	${td_firstnews.title }
                	${td_notice.title }
                	${td_teachingwork.title }
                	${td_sciencework.title }
                	${td_graduate.title }
                	${td_party.title }
                	${td_studentwork.title }
                	${td_creative.title }
                	
                	${td_college_introduction.title }
                	${td_college_organization.title }
                	${td_college_teacherStroop.title }
                	
                	${td_education_major.title }
                	${td_education_teach.title }
                	${td_education_stugraduate.title }
                	
                	${td_Rmstu_admissions.title }
                	${td_Rmstu_employment.title }
                	
                	${td_science_management.title }
                	${td_science_keylaboratory.title }
                	${td_science_organization.title }
                	${td_science_communication.title }
                	${td_science_international.title }
                	${td_science_service.title }
                	
                	${td_stumanage_stuwork.title }
                	${td_stumanage_league.title }
                	${td_stumanage_practice.title }
                	${td_stumanage_electricity.title }
                	
                	${td_test_center.title }
                	${td_test_money.title }
                	${td_test_resources.title }
                	
                	${td_talent_talent.title }
                	
                	${td_classmate_classmate.title }
                </h4>
            </p>

            <!-- 文章其它信息 -->
            <p class="article-info">
                <span>[</span>

                <abbr>作者:
                    <span class="author">
                    	${td_firstnews.author }
                    	${td_notice.author }
                    	${td_teachingwork.author }
                    	${td_sciencework.author }
                    	${td_graduate.author }
                    	${td_party.author }
                    	${td_studentwork.author }
                    	${td_creative.author }
                    	
                    	${td_college_introduction.author }
                    	${td_college_organization.author }
                    	${td_college_teacherStroop.author }
                    	
                    	${td_education_major.author }
                    	${td_education_teach.author }
                    	${td_education_stugraduate.author }
                    	
                    	${td_Rmstu_admissions.author }
                    	${td_Rmstu_employment.author }
                    	
                    	${td_science_management.author }
                    	${td_science_keylaboratory.author }
                    	${td_science_organization.author }
                    	${td_science_communication.author }
                    	${td_science_international.author }
                    	${td_science_service.author }
                    	
                    	${td_stumanage_stuwork.author }
                    	${td_stumanage_league.author }
                    	${td_stumanage_practice.author }
                    	${td_stumanage_electricity.author }
                    	
                    	${td_test_center.author }
                    	${td_test_money.author }
                    	${td_test_resources.author }
                    	
                    	${td_talent_talent.author }
                    	
                    	${td_classmate_classmate.author }
                    </span> | 时间:
                    <span class="time-clock">
                    	${td_firstnews.date }
                    	${td_notice.date }
                    	${td_teachingwork.date }
                    	${td_sciencework.date }
                    	${td_graduate.date }
                    	${td_party.date }
                    	${td_studentwork.date }
                    	${td_creative.date }
                    	
                    	${td_college_introduction.date }
                    	${td_college_organization.date }
                    	${td_college_teacherStroop.date }
                    	
                    	${td_education_major.date }
                    	${td_education_teach.date }
                    	${td_education_stugraduate.date }
                    	
                    	${td_Rmstu_admissions.date }
                    	${td_Rmstu_employment.date }
                    	
                    	${td_science_management.date }
                    	${td_science_keylaboratory.date }
                    	${td_science_organization.date }
                    	${td_science_communication.date }
                    	${td_science_international.date }
                    	${td_science_service.date }
                    	
                    	${td_stumanage_stuwork.date }
                    	${td_stumanage_league.date }
                    	${td_stumanage_practice.date }
                    	${td_stumanage_electricity.date }
                    	
                    	${td_test_center.date }
                    	${td_test_money.date }
                    	${td_test_resources.date }
                    	
                    	${td_talent_talent.date }
                    	
                    	${td_classmate_classmate.date }
                    </span>
                </abbr>

                <span>]</span>
            </p>

            <!-- 文章正文 -->
            <div class="panel">
                <div class="panel-body">
                    <section class="article-content">
                        ${td_firstnews.content }
                        ${td_notice.content }
                        ${td_teachingwork.content }
                        ${td_sciencework.content }
                        ${td_graduate.content }
                        ${td_party.content }
                        ${td_studentwork.content }
                        ${td_creative.content }
                        
                        ${td_college_introduction.content }
                        ${td_college_organization.content }
                        ${td_college_teacherStroop.content }
                        
                        ${td_education_major.content }
                        ${td_education_teach.content }
                        ${td_education_stugraduate.content }
                        
                        ${td_Rmstu_admissions.content }
                        ${td_Rmstu_employment.content }
                        
                        ${td_science_management.content }
                        ${td_science_keylaboratory.content }
                        ${td_science_organization.content }
                        ${td_science_communication.content }
                        ${td_science_international.content }
                        ${td_science_service.content }
                        
                        ${td_stumanage_stuwork.content }
                        ${td_stumanage_league.content }
                        ${td_stumanage_practice.content }
                        ${td_stumanage_electricity.content }
                        
                        ${td_test_center.content }
                        ${td_test_money.content }
                        ${td_test_resources.content }
                        
                        ${td_talent_talent.content }
                        
                        ${td_classmate_classmate.content }
                    </section>
                </div>
            </div>

        </div>
    </div>




    <!--底部-->
    <jsp:include page="/WEB-INF/include/foot.jsp"></jsp:include>
</body>

</html>