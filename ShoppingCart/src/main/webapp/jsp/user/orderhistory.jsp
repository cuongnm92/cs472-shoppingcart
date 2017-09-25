<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
<link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900'
	rel='stylesheet' type='text/css'>
<link href="ui/css/memenu.css" rel="stylesheet" type="text/css"
	media="all" />
<script type="text/javascript" src="ui/js/memenu.js"></script>
<script type="text/javascript" src="ui/js/product.js"></script>

<script src="ui/js/simpleCart.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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


<div class=" container">
<div class=" register">
<h3>Order History </h3>
<table class="table">  
<tr>
    <th>Product Id</th>
    <th>Product Name</th>
    <th>Order Id</th> 
    <th>Number of Product</th>
  </tr>
  <c:forEach var="productOrder" items ="${productOrders}" >  
  <tr>
    <td>${productOrder.productId}</td>
    <td>${productOrder.productName}</td>
    <td>${productOrder.orderId}</td>
    <td>${productOrder.amount}</td>
  </tr>
</c:forEach>
</table>

</div>
</div>
</body>
</html>