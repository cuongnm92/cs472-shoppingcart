<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Update Products Amount</title>
<link href="ui/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<script src="ui/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="ui/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript">
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 


</script>
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900'
	rel='stylesheet' type='text/css'>
<!--//fonts-->
<!-- start menu -->
<link href="ui/css/memenu.css" rel="stylesheet" type="text/css"
	media="all" />
<script type="text/javascript" src="ui/js/memenu.js"></script>
<script>
	$(document).ready(function() {
		$(".memenu").memenu();
	});
</script>
<script src="ui/js/simpleCart.min.js">
	
</script>
</head>
</head>
<body>
<div class=" container">
<div class=" register">
	
		  	  <form action="adminproducts" method="post">
				 <div class="col-md-6 register-top-grid">
					<h3>Update Product Information <a href="adminproducts"> (Add?)</a></h3></h3>
					 <div>
						<span>Product Id</span>
						<input type="text" name="productid"> 
					 </div>
					 
  					<input type="hidden" name="crudaction" value="update">
					 <div>
						<span>Additional Amount</span>
						<input type="number" name="amount"> 
					 </div>
					 
				     <div class="col-md-6 register-bottom-grid">

							 <input type="submit" value="submit">
							
					 </div>
					 <div class="clearfix"> </div>
				</form>
			</div>
</div>

</body>
</html>