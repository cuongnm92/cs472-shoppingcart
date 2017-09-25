<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Mercato</title>
<link href="ui/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<script src="ui/js/jquery.min.js"></script>
<link href="ui/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<link href="ui/css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="ui/js/memenu.js"></script>
<script>
	$(document).ready(function() {
		$(".memenu").memenu();
	});
</script>
<script type="text/javascript" src="ui/js/product.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
	<!--header-->
	<div class="header">
		<div class="header-top">
			<div class="container">
				<div class="header-left">

					<div class="ca-r">
						<div class="cart box_1">
							<a href="checkout.html">
								<h3>
									<div class="total">
										<span class="total_amount"></span>
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
					<div> <c:out value="Welcome, ${sessionScope.CurrentUser.firstName}"></c:out>  </div>
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
						<li><a class="color4" href="registration.jsp">Register</a></li>
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
	<!-- grow -->
	<div class="grow">
		<div class="container">
			<h2>Checkout</h2>
		</div>
	</div>
	<!-- grow -->
	<div class="container">
		<div class="check">
			<h1>My Shopping Bag ${checkout.productsQuantity}</h1>
			<div class="col-md-9 cart-items">
				<c:forEach items="${checkout.checkoutProducts}"
					var="checkoutProduct">
					<div class="cart-header">
						<div class="close1"></div>
						<div class="cart-sec simpleCart_shelfItem">
							<div class="cart-item cyc">
								<img src="${checkoutProduct.product.image}"
									class="img-responsive" alt="" />
							</div>
							<div class="cart-item-info">
								<h3>
									<a href="#">${checkoutProduct.product.productName}</a><span>${checkoutProduct.product.productDescription}</span>
								</h3>
								<ul class="qty">
									<li><p>Qty : ${checkoutProduct.quantity}</p></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"></div>

					</div>
				</c:forEach>
			</div>
		</div>
		<div class="col-md-3 cart-total">
			<a class="continue" href="#">Continue to basket</a>
			<ul class="total_price">
				<li class="last_price">
					<h4>TOTAL</h4>
				</li>
				<li class="last_price"><span>6350.00</span></li>
				<div class="clearfix"></div>
			</ul>

			<div class="clearfix"></div>
		</div>
	</div>
</body>
</html>