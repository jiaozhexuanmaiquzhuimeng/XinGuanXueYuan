<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>更多</title>
<jsp:include page="/WEB-INF/include/includeCss.jsp"></jsp:include>
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
                        $(this).find(options.element2).stop().show(options.speed);
                    }).on(options.type2, function (event) {
                        $(this).find(options.element2).stop().hide(options.speed);
                    });
                });

            }
        })(jQuery);

        $(document).ready(function () {
        	
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
					<li><a href="http://www.dzu.edu.cn/">德州学院</a></li>
					<li><a href="http://jsjx.dzu.edu.cn">访问旧版</a></li>
				</ul>
			</div>
		</div>
		<jsp:include page="/WEB-INF/include/dropDownList.jsp"></jsp:include>
	</div>

	<!--主体-->
	<div id="content">
		<div class="container">

			<div class="way-nav">
				<ol class="breadcrumb">
					<li><a href="<%=request.getContextPath()%>/userServlet?method=showTitle&creative=td_creative&graduate=td_graduate&party=td_party&sciencework=td_sciencework&studentwork=td_studentwork&firstnews=td_firstnews&notice=td_notice&teachingwork=td_teachingwork">首页</a></li>
					<li class="active-second"><a href="#"></a></li>
					<li class="active"></li>
				</ol>
			</div>



			<div class="row">
				<div class="col-md-3 left-menu">

					<div class="menu-head">
						<span><i class="glyphicon glyphicon-home"></i><span class="title">学院概况</span></span>
					</div>

					<div class="menu-content">

						<ul>
							<li data-name="introduction"><a href="<%=request.getContextPath()%>/collegeServlet?method=SchoolProfilePage&table=td_college_introduction&title=introduction"><span>学院简介</span><i
									class="glyphicon glyphicon-chevron-right"></i></a></li>
							<li data-name="organization"><a href="<%=request.getContextPath()%>/collegeServlet?method=SchoolProfilePage&table=td_college_organization&title=organization"><span>组织机构</span><i
									class="glyphicon glyphicon-chevron-right"></i></a></li>
							<li data-name="teacherStroop"><a href="<%=request.getContextPath()%>/collegeServlet?method=SchoolProfilePage&table=td_college_teacherStroop&title=teacherStroop"><span>师资队伍</span><i
									class="glyphicon glyphicon-chevron-right"></i></a></li>
						</ul>

					</div>


				</div>

				<div class="col-md-9">

					<div class="right-list clearfix">

						<ul class="list-item">
							<c:forEach items="${td_college_introduction }" var="collegeIntroduction">
								<li>
									<a href="<%=request.getContextPath()%>/userServlet?method=contentPage&id=${collegeIntroduction.id }&table=td_college_introduction">${collegeIntroduction.title }</a>
									<span class="time">${collegeIntroduction.date }</span>
								</li>
							</c:forEach>
							<c:forEach items="${td_college_organization }" var="college_organization">
								<li>
									<a href="<%=request.getContextPath()%>/userServlet?method=contentPage&id=${college_organization.id }&table=td_college_organization">${college_organization.title } </a>
									<span class="time">${college_organization.date }</span>  
								</li>
							</c:forEach>
							<c:forEach items="${td_college_teacherStroop }" var="college_teacherStroop">
								<li>
									<a href="<%=request.getContextPath()%>/userServlet?method=contentPage&id=${college_teacherStroop.id }&table=td_college_teacherStroop">${college_teacherStroop.title }</a>
									<span class="time">${college_teacherStroop.date }</span>
								</li>
								
							</c:forEach>
						</ul>

						<div class="page-nav">
							
								<nav aria-label="...">
							  <ul class="pagination pagination-sm">
							   		<li><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
							     	<li class="active"><a href="#">1</a></li>
								    <li><a href="#">2</a></li>
								    <li><a href="#">3</a></li>
								    <li><a href="#">4</a></li>
								    <li><a href="#">5</a></li>
								    <li>
								      <a href="#" aria-label="Next">
								        <span aria-hidden="true">&raquo;</span>
								      </a>
								    </li>
							  </ul>
							</nav>
							
						</div>
						
						
					</div>

				</div>

			</div>


		</div>

	</div>




	<!--底部-->
	<jsp:include page="/WEB-INF/include/foot.jsp"></jsp:include>
</body>

</html>