<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Products</title>
</head>
<body>
<div class=" container">
<div class=" register">
	
		  	  <form action="/adminregister" method="post">
				 <div class="col-md-6 register-top-grid">
					<h3>Admin Personal Infomation</h3>
					 <div>
						<span>First Name</span>
						<input type="text" name="firstname"> 
					 </div>
					 <div>
						<span>Last Name</span>
						<input type="text" name="lastname"> 
					 </div>
					 <div>
						 <span>Email Address</span>
						 <input type="text" name ="email"> 
					
				     <div class="col-md-6 register-bottom-grid">
						    <h3>Login information</h3>
							 <div>
								<span>Password</span>
								<input type="password" name="password" id ="pass1" 
								pattern="^.*(?=.{8,})(?=.*[a-zA-Z])(?=.*\d).{6,}">
							 </div>
							 <div>
								<span>Confirm Password</span>
								<input type="password" name="password2" id="pass2" onblur="checkPass()">
                               <div><span id="confirmMessage" class="confirmMessage"></span> </div>  
							 </div>
							 <input type="submit" value="submit">
							
					 </div>
					 <div class="clearfix"> </div>
				</form>
			</div>
</div>
</body>
</html>