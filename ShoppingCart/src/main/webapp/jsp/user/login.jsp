<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Mercato Log In</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<link href="${contextPath}/resources/css/bootstrap.css" rel="stylesheet"
	type="text/css" media="all" />
<script src="${contextPath}/resources/js/jquery.min.js"></script>
<link href="${contextPath}/resources/css/style.css" rel="stylesheet"
	type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript">
	
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 






</script>
<link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900'
	rel='stylesheet' type='text/css'>
<link href="${contextPath}/resources/css/memenu.css" rel="stylesheet"
	type="text/css" media="all" />
<script type="text/javascript"
	src="${contextPath}/resources/js/memenu.js"></script>
<script type="text/javascript"
	src="${contextPath}/resources/js/product.js"></script>

<script src="${contextPath}/resources/js/simpleCart.min.js"></script>
</head>
<body>
	<div class="header">
		<div class="header-top">
			<div class="container">
				<div class="header-left">

					<div class="ca-r">
						<div class="cart box_1">
							<a href="checkout.html">
								<h3>
									<div class="total">
										<span class="simpleCart_total"></span>
									</div>
									<img src="ui/images/cart.png" alt="" />
								</h3>
							</a>
							<p>
								<a href="javascript:;" class="simpleCart_empty">Empty Cart</a>
							</p>

						</div>
					</div>
					<div class="clearfix"></div>

				</div>
				<c:if test="${sessionScope.CurrentUser!=null}">
					<div>
						<c:out value="Welcome, ${sessionScope.CurrentUser.firstName}"></c:out>
					</div>
					<span><a href="logout"> LOGOUT </a></span>
				</c:if>

			</div>
		</div>
		<div class="container">
			<div class="head-top">
				<div class="logo">
					<h1>
						<a href="/mercato">Mercato</a>
					</h1>
				</div>
				<div class=" h_menu4">
					<ul class="memenu skyblue">
						<li><a class="color4" href="products">Products</a></li>
						<c:if test="${sessionScope.CurrentUser==null}">
							<li><a class="color4" href="register">Register</a></li>
							<li><a class="color4" href="login">Login</a></li>
						</c:if>
						<c:if test="${sessionScope.CurrentUser!=null}">
							<li><a class="color4" href="orderhistory">Orders</a></li>
						</c:if>
					</ul>
				</div>

				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="account">
			<div class="account-pass">
				<div class="col-md-8 account-top">
					<form action="login" method="post">

						<div>
							<span>Email</span> <input type="text" name="username">
						</div>
						<div>
							<span>Password</span> <input type="password" name="password">
						</div>
						<div>
							<label> ${message} </label>
						</div>
						<div>
							<label><input type="checkbox" name="rememberme"
								${rememberme} />Remember me?</label>
						</div>
						<input type="submit" value="Login">
					</form>
				</div>
				<div class="col-md-4 left-account ">
					<a href="single.html"><img class="img-responsive "
						src="ui/images/s1.jpg" alt=""></a> <a href="register"
						class="create">Create an account</a>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>

	</div>



</body>
</html>