<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Mercato Log In</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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

<script
	src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/additional-methods.min.js"></script>

<link href="${contextPath}/resources/css/account/registration.css"
	rel="stylesheet" type="text/css" media="all" />

<script src="${contextPath}/resources/js/account/registration.js"></script>
</head>
<body>
	<jsp:include page="../layout/header.jsp" />
	<div class="container">
		<div class="row signup-form-container">
			<!-- form start -->
			<form:form method="post" role="form" modelAttribute="userForm"
				id="register-form" autocomplete="off"
				action="${contextPath}/account/registration">

				<div class="form-header">
					<h3 class="form-title">
						<i class="fa fa-user"></i> Sign Up
					</h3>

					<div class="pull-right">
						<h3 class="form-title">
							<span class="glyphicon glyphicon-pencil"></span>
						</h3>
					</div>

				</div>

				<div class="form-body">

					<div class="alert alert-info" id="message" style="display: none;">
						submitted</div>

					<div class="form-group">
						<div class="input-group">
							<div class="input-group-addon">
								<span class="glyphicon glyphicon-user"></span>
							</div>
							<form:input path="username" name="username" type="text"
								class="form-control" id="username" placeholder="Username" />
						</div>
						<span class="help-block" id="error"></span>
					</div>

					<div class="form-group">
						<div class="input-group">
							<div class="input-group-addon">
								<span class="glyphicon glyphicon-envelope"></span>
							</div>
							<form:input path="email" name="email" type="text"
								class="form-control" id="email" placeholder="Email" />
						</div>
						<span class="help-block" id="error"></span>
					</div>

					<div class="row">

						<div class="form-group col-lg-6">
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-lock"></span>
								</div>
								<form:input path="password" name="password" id="password"
									type="password" class="form-control" placeholder="Password" />
							</div>
							<span class="help-block" id="error"></span>
						</div>

						<div class="form-group col-lg-6">
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-lock"></span>
								</div>
								<input name="cpassword" type="password" id="cpassword"
									class="form-control" placeholder="Retype Password">
							</div>
							<span class="help-block" id="error"></span>
						</div>

					</div>


				</div>

				<div class="form-footer">
					<button type="submit" class="btn btn-info" id="btn-submit">
						<span class="glyphicon glyphicon-log-in"></span> Sign Me Up !
					</button>
				</div>


			</form:form>

		</div>

	</div>
	<link href="${contextPath}/resources/css/layout/footer.css" rel="stylesheet" type="text/css" media="all" />
	<footer class="footer py-5 bg-dark">
	<div class="container">
		<p class="m-0 text-center text-white">Shopping Cart &copy; 2017</p>
	</div>
	<!-- /.container --> </footer>
</body>
</html>
