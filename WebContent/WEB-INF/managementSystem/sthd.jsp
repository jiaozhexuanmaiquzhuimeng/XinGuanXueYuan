<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">

<head>
<title></title>
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<jsp:include page="include/includeCss.jsp"></jsp:include>
</head>

<!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
<!--[if IE 7 ]> <body class="ie ie7"> <![endif]-->
<!--[if IE 8 ]> <body class="ie ie8"> <![endif]-->
<!--[if IE 9 ]> <body class="ie ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->

<body>
	<!--<![endif]-->

	<jsp:include page="include/includeHeader.jsp"></jsp:include>


	<div class="container-fluid">

		<div class="row-fluid">
			<jsp:include page="include/includeLeftNav.jsp"></jsp:include>

			<div class="span9">
				<ol class="breadcrumb">
					<li><a href="#">网站栏目管理</a></li>
					<li><a href="#">学生管理</a></li>
					<li class="active">社团活动</li>
				</ol>
				<div class="btn-toolbar">
					<button class="btn btn-primary" onclick="window.location.href='<%=request.getContextPath()%>/managementServlet?method=forwardPage&title=sthd'">
						<i class="icon-plus"></i> 发布新闻
					</button>
				</div>
				<div class="well">
					<table class="table">
						<thead>
							<tr>
								<th>ID</th>
								<th>标题</th>
								<th>作者</th>
								<th>时间</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${pageInfo.list }" var="content" varStatus="vst">
								<tr>
									<td>${content.id }</td>
									<td><a href="<%=request.getContextPath()%>/userServlet?method=contentPage&id=${content.id }&table=td_stumanage_league" title="预览文章" target="_balnk">${content.title }</a></td>
									<td>${content.author }</td>
									<td>${content.date }</td>
									<td><a href="user.html" title="编辑"> <i
											class="fa fa-pencil"></i>
									</a> <a class="btn-delete" href="#myModal" role="button" data-toggle="modal"
									data-contentid="${content.id}"	title="删除"> <i class="fa fa-remove"></i>
									</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="pagination">
					<ul class="pagination pagination-sm">
						<c:if test="${pageInfo.hasPrev }">
							<li><a
								href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=sthd&pageNo=${pageInfo.prevPage }&table=${table }&title=${title }"
								aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
						</c:if>

						<!-- 1-10页代码显示 -->
						<c:if test="${totalPageNumber>10 }">
							<!-- 如果当前页面大于等于1 && 小于等于 6 -->
							<c:if test="${(pageInfo.pageNo>=1) && (pageInfo.pageNo<=6) }">
								<c:forEach begin="1" end="10" var="n">
									<c:if test="${pageInfo.pageNo == n }">
										<li class="active"><a
											href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=sthd&pageNo=${n}&table=${table }&title=${title }">${n}</a></li>
									</c:if>
									<c:if test="${pageInfo.pageNo != n }">
										<li><a
											href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=sthd&pageNo=${n}&table=${table }&title=${title }">${n}</a></li>
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
											href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=sthd&pageNo=${n}&table=${table }&title=${title }">${n}</a></li>
									</c:if>
									<c:if test="${pageInfo.pageNo != n }">
										<li><a
											href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=sthd&pageNo=${n}&table=${table }&title=${title }">${n}</a></li>
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
											href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=sthd&pageNo=${n}&table=${table }&title=${title }">${n}</a></li>
									</c:if>
									<c:if test="${pageInfo.pageNo != n }">
										<li><a
											href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=sthd&pageNo=${n}&table=${table }&title=${title }">${n}</a></li>
									</c:if>
								</c:forEach>
							</c:if>
						</c:if>
						<!-- 如果总页数小于10页) -->
						<c:if test="${totalPageNumber<10 }">
							<c:forEach begin="1" end="${totalPageNumber }" var="n">
								<c:if test="${pageInfo.pageNo == n }">
									<li class="active"><a
										href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=sthd&pageNo=${n}&table=${table }&title=${title }">${n}</a></li>
								</c:if>
								<c:if test="${pageInfo.pageNo != n }">
									<li><a
										href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=sthd&pageNo=${n}&table=${table }&title=${title }">${n}</a></li>
								</c:if>
							</c:forEach>
						</c:if>

						<c:if test="${pageInfo.hasNext }">
							<li><a
								href="<%=request.getContextPath()%>/managementServlet?method=skipPage&jsp=sthd&pageNo=${pageInfo.nextPage }&table=${table }&title=${title }"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span>
							</a></li>
						</c:if>
					</ul>
				</div>

				<div class="modal small hide" id="myModal" tabindex="-1"
					role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h3 id="myModalLabel">删除确认?</h3>
					</div>
					<div class="modal-body">
						<p class="error-text">
							<i class="icon-warning-sign modal-icon"></i>
							确定要删除这篇文章吗?
						</p>
					</div>
					<div class="modal-footer">
						<button class="btn" data-dismiss="modal" aria-hidden="true">退出</button>
						<button class="btn btn-danger btn-sure-delete" data-dismiss="modal">删除</button>
					</div>
				</div>

			</div>
		</div>
	</div>


	<footer>
		<hr>

		<p class="pull-right">
			德州学院 <a href="http://www.dzu.edu.cn/" title="德州学院" target="_blank">信息管理学院</a>
		</p>


		<p>
			&copy; 2018 <a href="#"></a>
		</p>
	</footer>





	<!-- Le javascript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->













</body>

</html>