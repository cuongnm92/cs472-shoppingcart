<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Manage Products</title>
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
<script type="text/javascript" src="ui/js/main.js"></script>
<script>
	$(document).ready(function() {
		$(".memenu").memenu();
	});
</script>
<script src="jQuery.AjaxFileUpload.js"></script>
<script lang="Javascript">
$(document).ready(function() {
  $('input[type="file"]').ajaxfileupload({
  'action' : 'UploadFile',
  'onComplete' : function(response) {
      $('#upload').hide();
      $('#message').show();
                        
      var statusVal = JSON.stringify(response.status);

     if(statusVal == "false")
     {
     $("#message").html("<font color='red'>"+JSON.stringify(response.message)+"</font>");
     }  
     if(statusVal == "true")
     {
     $("#message").html("<font color='green'>"+JSON.stringify(response.message)+"</font>");
     }                  
},
'onStart' : function() {
        $('#upload').show();
        $('#message').hide();
}
});
});
</script>
<script src="ui/js/simpleCart.min.js">
	
</script>
</head>
<body>


<div class=" container">
<div class=" register">
	
		  	  <form action="adminproducts" method="post" >
				 <div class="col-md-6 register-top-grid">
					<h3>Add Product Information
					<a href="inventory"> (Update?)</a></h3>
   					<input type="hidden" name="crudaction" value="add">
<!-- 					 <div> -->
<!-- 						<span>Product Id</span> -->
<!-- 						<input type="text" name="productid">  -->
<!-- 					 </div> -->
					 <div>
						<span>Product</span>
						<input type="text" name="productname"> 
					 </div> 
					 <div>
						<span>Price</span>
						<input type="number" name="price"> 
					 </div>
					 <div>
						<span>Available Amount</span>
						<input type="number" name="amount"> 
					 </div>
					 <div>
						 <span>Image :</span>
						 <input type="file" name ="file">
						 <div id="upload" style="display: none;">Uploading..</div>
       					 <div id="message"></div>
						  </div>
					 <div>
						<span>  Product Description</span>
						<textarea cols="100" rows="10" name="productdesc"> </textarea>
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