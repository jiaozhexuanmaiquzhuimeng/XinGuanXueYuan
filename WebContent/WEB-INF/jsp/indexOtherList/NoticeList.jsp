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
						href="<%=request.getContextPath()%>/userServlet?method=showTitle&creative=td_creative&graduate=td_education_stugraduate&party=td_party&sciencework=td_science_management&studentwork=td_stumanage_stuwork&firstnews=td_firstnews&notice=td_notice&teachingwork=td_education_teach">首页</a></li>
					<li class="active">通知公告</li>
				</ol>
			</div>



			<div class="row">

				<div class="col-md-12">

					<div class="right-list clearfix">

						<ul class="list-item">
							<c:forEach items="${pageInfo.list }" var="notice">
								<li><a title="${notice.title }"
									href="<%=request.getContextPath()%>/userServlet?method=contentPage&id=${notice.id }&table=${table }">${notice.title }</a>
									<span class="time">${notice.date }</span></li>
							</c:forEach>
						</ul>
							
						<div class="page-nav">

					<nav aria-label="...">
						<ul class="pagination pagination-sm">
							<c:if test="${pageInfo.hasPrev }">
								<li><a
									href="<%=request.getContextPath()%>/noticeServlet?method=NoticePage&pageNo=${pageInfo.prevPage }&table=${table }"
									aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
							</c:if>

							<!-- 1-10页代码显示 -->
							<c:if test="${totalPageNumber>10 }">
								<!-- 如果当前页面大于等于1 && 小于等于 6 -->
								<c:if test="${(pageInfo.pageNo>=1) && (pageInfo.pageNo<=6) }">
									<c:forEach begin="1" end="10" var="n">
										<c:if test="${pageInfo.pageNo == n }">
											<li class="active"><a
												href="<%=request.getContextPath()%>/noticeServlet?method=NoticePage&pageNo=${n}&table=${table }">${n}</a></li>
										</c:if>
										<c:if test="${pageInfo.pageNo != n }">
											<li><a
												href="<%=request.getContextPath()%>/noticeServlet?method=NoticePage&pageNo=${n}&table=${table }">${n}</a></li>
										</c:if>
									</c:forEach>
								</c:if>
								<!-- 如果当前页面大于6 && 小于 (总页数-4) -->
								<c:if
									test="${(pageInfo.pageNo>6) && (pageInfo.pageNo<(totalPageNumber-4)) }">
									<c:forEach begin="${pageInfo.pageNo-5 }"
										end="${pageInfo.pageNo+4 }" var="n">
										<c:if test="${pageInfo.pageNo == n }">
											<li class="active"><a
												href="<%=request.getContextPath()%>/noticeServlet?method=NoticePage&pageNo=${n}&table=${table }">${n}</a></li>
										</c:if>
										<c:if test="${pageInfo.pageNo != n }">
											<li><a
												href="<%=request.getContextPath()%>/noticeServlet?method=NoticePage&pageNo=${n}&table=${table }">${n}</a></li>
										</c:if>
									</c:forEach>
								</c:if>
								<!-- 如果当前页面大于等于(总页数-4) && 小于等于 (总页数) -->
								<c:if
									test="${(pageInfo.pageNo>=(totalPageNumber-4)) && (pageInfo.pageNo<=totalPageNumber) }">
									<c:forEach begin="${totalPageNumber-9 }"
										end="${totalPageNumber }" var="n">
										<c:if test="${pageInfo.pageNo == n }">
											<li class="active"><a
												href="<%=request.getContextPath()%>/noticeServlet?method=NoticePage&pageNo=${n}&table=${table }">${n}</a></li>
										</c:if>
										<c:if test="${pageInfo.pageNo != n }">
											<li><a
												href="<%=request.getContextPath()%>/noticeServlet?method=NoticePage&pageNo=${n}&table=${table }">${n}</a></li>
										</c:if>
									</c:forEach>
								</c:if>
							</c:if>
							<!-- 如果总页数小于10页) -->
							<c:if test="${totalPageNumber<10 }">
								<c:forEach begin="1" end="${totalPageNumber }" var="n">
									<c:if test="${pageInfo.pageNo == n }">
										<li class="active"><a
											href="<%=request.getContextPath()%>/noticeServlet?method=NoticePage&pageNo=${n}&table=${table }">${n}</a></li>
									</c:if>
									<c:if test="${pageInfo.pageNo != n }">
										<li><a
											href="<%=request.getContextPath()%>/noticeServlet?method=NoticePage&pageNo=${n}&table=${table }">${n}</a></li>
									</c:if>
								</c:forEach>
							</c:if>

							<c:if test="${pageInfo.hasNext }">
								<li><a
									href="<%=request.getContextPath()%>/noticeServlet?method=NoticePage&pageNo=${pageInfo.nextPage }&table=${table }"
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

	</div>




	<!--底部-->
	<jsp:include page="/WEB-INF/include/foot.jsp"></jsp:include>
	<script type="text/javascript">
			
			 var t = document.documentElement.scrollTop || document.body.scrollTop;
			 window.scrollTo(0,136);
			
	</script>
</body>

</html>