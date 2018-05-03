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
					<li><a href="#">德州学院</a></li>
					<li><a href="#">访问旧版</a></li>
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
					<li><a href="#">首页</a></li>
					<li><a href="#">学院概况</a></li>
					<li class="active">学院简介</li>
				</ol>
			</div>



			<div class="row">
				<div class="col-md-3 left-menu">

					<div class="menu-head">
						<span><i class="glyphicon glyphicon-home"></i>学院概况</span>
					</div>

					<div class="menu-content">

						<ul>
							<li data-name="introduction"><a href="">学院简介<i
									class="glyphicon glyphicon-chevron-right"></i></a></li>
							<li><a href="">组织机构<i
									class="glyphicon glyphicon-chevron-right"></i></a></li>
							<li><a href="">师资队伍<i
									class="glyphicon glyphicon-chevron-right"></i></a></li>
						</ul>

					</div>


				</div>

				<div class="col-md-9">

					<div class="right-list">

						<ul class="list-item">
							<c:forEach items="${td_education_major }" var="major">
								<li><a href="<%=request.getContextPath()%>/userServlet?method=contentPage&id=${major.id }&table=td_education_major">${major.title } <span class="time">${major.date }</span>  </a></li>
							</c:forEach>
							<c:forEach items="${td_education_teach }" var="teach">
								<li><a href="<%=request.getContextPath()%>/userServlet?method=contentPage&id=${teach.id }&table=td_education_teach">${teach.title } <span class="time">${teach.date }</span>  </a></li>
							</c:forEach>
							<c:forEach items="${td_education_stugraduate }" var="stugraduate">
								<li><a href="<%=request.getContextPath()%>/userServlet?method=contentPage&id=${stugraduate.id }&table=td_education_stugraduate">${stugraduate.title } <span class="time">${stugraduate.date }</span>  </a></li>
							</c:forEach>
						</ul>

					</div>

				</div>

			</div>


		</div>

	</div>




	<!--底部-->
	<jsp:include page="/WEB-INF/include/foot.jsp"></jsp:include>
</body>

</html>