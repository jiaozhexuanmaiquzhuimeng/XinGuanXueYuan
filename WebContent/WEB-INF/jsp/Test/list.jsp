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
					<li class="active">学院简介</li>
				</ol>
			</div>



			<div class="row">
				<div class="col-md-3 left-menu">

					<div class="menu-head">
						<span><i class="glyphicon glyphicon-home"></i><span class="title">实验教学</span></span>
					</div>

					<div class="menu-content">

						<ul>
							<li data-name="center"><a href="<%=request.getContextPath()%>/testServlet?method=TestPage&table=td_test_center&title=center"><span>示范中心</span><i
									class="glyphicon glyphicon-chevron-right"></i></a></li>
							<li data-name="money"><a href="<%=request.getContextPath()%>/testServlet?method=TestPage&table=td_test_money&title=money"><span>固定资产</span><i
									class="glyphicon glyphicon-chevron-right"></i></a></li>
							<li data-name="resources"><a href="<%=request.getContextPath()%>/testServlet?method=TestPage&table=td_test_resources&title=resources"><span>网络资源</span><i
									class="glyphicon glyphicon-chevron-right"></i></a></li>
						</ul>

					</div>


				</div>

				<div class="col-md-9">

					<div class="right-list">

						<ul class="list-item">
							<c:forEach items="${td_test_center }" var="center">
								<li>
									<a href="<%=request.getContextPath()%>/userServlet?method=contentPage&id=${center.id }&table=td_test_center">${center.title }</a>
									<span class="time">${center.date }</span>
								</li>
							</c:forEach>
							<c:forEach items="${td_test_money }" var="money">
								<li>
									<a href="<%=request.getContextPath()%>/userServlet?method=contentPage&id=${money.id }&table=td_test_money">${money.title }   </a>
									<span class="time">${money.date }</span>
								</li>
							</c:forEach>
							<c:forEach items="${td_test_resources }" var="resources">
								<li>
									<a href="<%=request.getContextPath()%>/userServlet?method=contentPage&id=${resources.id }&table=td_test_resources">${resources.title }  </a>
									<span class="time">${resources.date }</span> 
								</li>
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