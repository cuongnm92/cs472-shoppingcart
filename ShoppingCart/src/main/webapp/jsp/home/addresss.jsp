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

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900'
	rel='stylesheet' type='text/css'>

<link href="${contextPath}/resources/css/home/index.css"
	rel='stylesheet' type='text/css'>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>

	<jsp:include page="../layout/header.jsp" />
	<!-- Page Content -->
	<div class="container">
		<div class="row">
			<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Source address</legend>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="Country">Country</label>
  <div class="col-md-5">
    <select id="Country" name="Country" class="form-control">
      <option value="IR">IR Iran</option>
      <option value="USA">United States</option>
    </select>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="State">State</label>  
  <div class="col-md-6">
  <input id="State" name="State" type="text" placeholder="state" class="form-control input-md" required="">
  <span class="help-block">Enter Source state</span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="city">City/Town</label>  
  <div class="col-md-6">
  <input id="city" name="city" type="text" placeholder="city or town" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="address1">Address Line1</label>  
  <div class="col-md-8">
  <input id="address1" name="address1" type="text" placeholder="" class="form-control input-md">
  <span class="help-block">Street address, P.O. box, company name, c/o</span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Address2">Address Line2</label>  
  <div class="col-md-8">
  <input id="Address2" name="Address2" type="text" placeholder="" class="form-control input-md">
  <span class="help-block">Apartment, suite , unit, building, floor, etc.</span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="zip">Zip/Postal code</label>  
  <div class="col-md-4">
  <input id="zip" name="zip" type="text" placeholder="zip or postal code" class="form-control input-md" required="">
    
  </div>
</div>

</fieldset>
</form>
		</div>
	</div>
	<!-- /.container -->
	<jsp:include page="../layout/footer.jsp" />
</body>
</html>