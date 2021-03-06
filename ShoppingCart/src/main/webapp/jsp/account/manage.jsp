<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Amazon</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
	integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
	integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
	crossorigin="anonymous"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
	integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
	crossorigin="anonymous"></script>

<script src="${contextPath}/resources/js/admin/account.js"></script>

<link href="${contextPath}/resources/css/home/index.css"
	rel="stylesheet" type="text/css" media="all" />

<link href="${contextPath}/resources/css/account/summary.css"
	rel="stylesheet" type="text/css" media="all" />

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900'
	rel='stylesheet' type='text/css'>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>

	<jsp:include page="../layout/header.jsp" />
	<!-- Page Content -->
	<div class="container">

		<div class="row">

			<div class="col-lg-3 category">
				<div class="list-group">
					<a href="${contextPath}/account/summary" class="list-group-item">Summary</a>
					<a href="${contextPath}/account/manage"
						class="list-group-item active">Account</a> <a
						href="${contextPath}/product/add" class="list-group-item">Add
						new product</a>
				</div>
			</div>
			<!-- /.col-lg-3 -->
			<div class="col-lg-9 right-panel">
				<div class="row">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>#</th>
								<th>Username</th>
								<th>Email</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="user" items="${users}" varStatus="count">
								<tr>
									<th scope="row">${count.count}</th>
									<td class="username">${user.username}</td>
									<td class="email">${user.email}</td>
									<td><a id="btnDelete" class="btn btn-warning btn-xs" href="javascript:void(0);" title="Delete" alt="Delete"><span class="glyphicon glyphicon-pencil">Delete</span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<!-- /.row -->
			</div>
		</div>

	</div>
</body>
</html>