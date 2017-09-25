<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Mattress A Ecommerce Category Flat Bootstrap Responsive
	Website Template | single :: w3layouts</title>
<link href="ui/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<script src="ui/js/jquery.min.js"></script>
<link href="ui/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="ui/css/product.css" rel="stylesheet" type="text/css" media="all" />
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
<link href="ui/css/memenu.css" rel="stylesheet" type="text/css"
	media="all" />
<script type="text/javascript" src="ui/js/memenu.js"></script>
<script type="text/javascript" src="ui/js/product.js"></script>
<script type="text/javascript" src="ui/js/updateproductamount.js"></script>
<script>
	$(document).ready(function() {
		$(".memenu").memenu();
	});
</script>
<script type="text/javascript">
$(function(){
	
// 	function updateProduct(){
// 		$.post('ProductDetailServlet',{id:$('#product').val()}, processData)
// 	}
	
// 	function processData(data){
// 		data = JSON.parse(data);
// 		$('#availableamount').text(data.amountAvailable);
// 	}
	
// 	setTimeout(updateProduct, 5000);
	setTimeout(function(){
		   window.location.reload(1);
		}, 5000);	
	
})</script>
<script src="ui/js/simpleCart.min.js">
	
</script>
<script src="ui/js/imagezoom.js"></script>
</head>
<body>
	<!--header-->
	<!--header-->
	<div class="header">
		<div class="header-top">
			<div class="container">
				<div class="header-left">

					<div class="ca-r">
						<div class="cart box_1">
							<a href="checkout">
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
					<div> <c:out value="Welcome, ${sessionScope.CurrentUser.firstName}"></c:out>  </div>
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
			<h2>${product.productName}</h2>
		</div>
	</div>
	<!-- grow -->
	<div class="product">
		<div class="container">

			<div class="product-price1">
				<div class="top-sing">
					<div class="col-md-7 single-top">
						<div class="thumb-image">
							<img src="ui/images/si.jpg" class="img-responsive">
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-md-5 single-top-in simpleCart_shelfItem">
					<input id="product" type="hidden" value="${product.productId}">
						<div class="single-para ">
							<h4>${product.productName}</h4>
							<div class="star-on">
								<div class="clearfix"></div>
							</div>

							<h5 class="item_price">${product.price}</h5>
							
							<c:out value="Max Items Allowed : ${product.amountAvailable}" ></c:out>
							
							<p>${product.productDescription}</p>
							<a href="#" class="add-cart item_add add_product">ADD TO CART</a>

						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<!---->
			</div>

			<div class="clearfix"></div>
		</div>
	</div>
</body>
</html>