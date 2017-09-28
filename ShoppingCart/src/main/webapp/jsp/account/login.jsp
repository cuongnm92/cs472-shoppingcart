 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Mercato Log In</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
	integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
	integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
	crossorigin="anonymous"></script>

<link href="${contextPath}/resources/css/account/login.css"
	rel="stylesheet" type="text/css" media="all" />

</head>
<body>
	<jsp:include page="../layout/header.jsp" />
	<div class="container">
		<div class="row signin-form-container">
			<form method="POST" action="${contextPath}/account/login" class="form-signin">
				<div class="form-header">
					<h3 class="form-title">
						<i class="fa fa-user"></i> Sign In
					</h3>

					<div class="pull-right">
						<h3 class="form-title">
							<span class="glyphicon glyphicon-pencil"></span>
						</h3>
					</div>

				</div>

				<div class="form-body">
					<div class="form-group ${error != null ? 'has-error' : ''}">
						<span>${message}</span>

						<div class="alert alert-info" id="message" style="display: none;">
							submitted</div>

						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-user"></span>
								</div>
								<input name="username" type="text" class="form-control"
									placeholder="Username" autofocus="true" />
							</div>
							<span class="help-block" id="error"></span>
						</div>

						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-envelope"></span>
								</div>
								<input name="password" type="password" class="form-control"
									placeholder="Password" /> <span>${error}</span> <input
									type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" />
							</div>
							<span class="help-block" id="error"></span>
						</div>
						<div class="form-footer">
							<button class="btn btn-info" type="submit"><span class="glyphicon glyphicon-log-in"></span> Sign
								In</button>
						</div>
						<p>
							<a href="${contextPath}/account/registration">Create an
								account</a>
						</p>
					</div>
				</div>
			</form>
		</div>
	</div>
	<link href="${contextPath}/resources/css/layout/footer.css"
		rel="stylesheet" type="text/css" media="all" />
	<footer class="footer py-5 bg-dark">
	<div class="container">
		<p class="m-0 text-center text-white">Shopping Cart &copy; 2017</p>
	</div>
</body>
</html>