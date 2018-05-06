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
					<li><a
						href="<%=request.getContextPath()%>/userServlet?method=showTitle&creative=td_creative&graduate=td_graduate&party=td_party&sciencework=td_sciencework&studentwork=td_studentwork&firstnews=td_firstnews&notice=td_notice&teachingwork=td_teachingwork">首页</a></li>
					<li class="active-second"><a href="#"></a></li>
					<li class="active">学院简介</li>
				</ol>
			</div>



			<div class="row">
				<div class="col-md-3 left-menu">

					<div class="menu-head">
						<span><i class="glyphicon glyphicon-home"></i><span
							class="title">学生管理</span></span>
					</div>

					<div class="menu-content">

						<ul>
							<li data-name="stuwork"><a
								href="<%=request.getContextPath()%>/stumanageServlet?method=StumanagePage&table=td_stumanage_stuwork&title=stuwork&pageNo=1"><span>学生工作</span><i
									class="glyphicon glyphicon-chevron-right"></i></a></li>
							<li data-name="league"><a
								href="<%=request.getContextPath()%>/stumanageServlet?method=StumanagePage&table=td_stumanage_league&title=league&pageNo=1"><span>团总支</span><i
									class="glyphicon glyphicon-chevron-right"></i></a></li>
							<li data-name="practice"><a
								href="<%=request.getContextPath()%>/stumanageServlet?method=StumanagePage&table=td_stumanage_practice&title=practice&pageNo=1"><span>实习实训</span><i
									class="glyphicon glyphicon-chevron-right"></i></a></li>
							<li data-name="electricity"><a
								href="<%=request.getContextPath()%>/stumanageServlet?method=StumanagePage&table=td_stumanage_electricity&title=electricity&pageNo=1"><span>电商基地</span><i
									class="glyphicon glyphicon-chevron-right"></i></a></li>
						</ul>

					</div>


				</div>

				<div class="col-md-9">

					<div class="right-list">

						<ul class="list-item">
							<c:forEach items="${pageInfo.list }" var="stuwork">
								<li><a
									href="<%=request.getContextPath()%>/userServlet?method=contentPage&id=${stuwork.id }&table=${table }">${stuwork.title }
								</a> <span class="time">${stuwork.date }</span></li>
							</c:forEach>
						</ul>

					</div>
					<div class="page-nav">

						<nav aria-label="...">
							<ul class="pagination pagination-sm">
								<c:if test="${pageInfo.hasPrev }">
									<li><a
										href="<%=request.getContextPath()%>/stumanageServlet?method=StumanagePage&pageNo=${pageInfo.prevPage }&table=${table }"
										aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
								</c:if>

								<!-- 1-10页代码显示 -->
								<c:if test="${totalPageNumber>10 }">
									<!-- 如果当前页面大于等于1 && 小于等于 6 -->
									<c:if test="${(pageInfo.pageNo>=1) && (pageInfo.pageNo<=6) }">
										<c:forEach begin="1" end="10" var="n">
											<li><a
												href="<%=request.getContextPath()%>/stumanageServlet?method=StumanagePage&pageNo=${n}&table=${table }">${n}</a></li>
										</c:forEach>
									</c:if>
									<!-- 如果当前页面大于6 && 小于 (总页数-4) -->
									<c:if
										test="${(pageInfo.pageNo>6) && (pageInfo.pageNo<(totalPageNumber-4)) }">
										<c:forEach begin="${pageInfo.pageNo-5 }"
											end="${pageInfo.pageNo+4 }" var="n">
											<li><a
												href="<%=request.getContextPath()%>/stumanageServlet?method=StumanagePage&pageNo=${n}&table=${table }">${n}</a></li>
										</c:forEach>
									</c:if>
									<!-- 如果当前页面大于等于(总页数-4) && 小于等于 (总页数) -->
									<c:if
										test="${(pageInfo.pageNo>=(totalPageNumber-4)) && (pageInfo.pageNo<=totalPageNumber) }">
										<c:forEach begin="${totalPageNumber-9 }"
											end="${totalPageNumber }" var="n">
											<li><a
												href="<%=request.getContextPath()%>/stumanageServlet?method=StumanagePage&pageNo=${n}&table=${table }">${n}</a></li>
										</c:forEach>
									</c:if>
								</c:if>
								<!-- 如果总页数小于10页) -->
								<c:if test="${totalPageNumber<10 }">
									<c:forEach begin="1" end="${totalPageNumber }" var="n">
										<li><a
											href="<%=request.getContextPath()%>/stumanageServlet?method=StumanagePage&pageNo=${n}&table=${table }">${n}</a></li>
									</c:forEach>
								</c:if>

								<c:if test="${pageInfo.hasNext }">
									<li><a
										href="<%=request.getContextPath()%>/stumanageServlet?method=StumanagePage&pageNo=${pageInfo.nextPage }&table=${table }"
										aria-label="Next"> <span aria-hidden="true">&raquo;</span>
									</a></li>
								</c:if>
							</ul>
						</nav>

					</div>

				</div>

			</div>


		</div>

	</div>




	<!--底部-->
	<jsp:include page="/WEB-INF/include/foot.jsp"></jsp:include>
</body>

</html>