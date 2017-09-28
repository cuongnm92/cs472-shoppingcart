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
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
	integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
	crossorigin="anonymous"></script>

<script
	src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.2/raphael-min.js"></script>
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/prettify/r224/prettify.min.js"></script>
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/prettify/r224/prettify.min.css">
<script src="${contextPath}/resources/js/morris.js"></script>
<script src="${contextPath}/resources/js/account/summary.js"></script>

<link href="${contextPath}/resources/css/home/index.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="${contextPath}/resources/css/morris.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="${contextPath}/resources/css/account/summary.css" rel="stylesheet"
	type="text/css" media="all" />
	
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900'
	rel='stylesheet' type='text/css'>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>

	<jsp:include page="../layout/header.jsp" />
	<!-- Page Content -->
	<div class="container">

		<div class="row">

			<div class="col-lg-3 category">
				<div class="list-group">
					<a href="${contextPath}/account/summary" class="list-group-item active">Summary</a> 
					<a href="${contextPath}/account/manage" class="list-group-item">Account</a>
					<a href="${contextPath}/product/add" class="list-group-item">Add new product</a>
				</div>
			</div>
			<!-- /.col-lg-3 -->
			<div class="col-lg-9 right-panel">
				<div class="row">
					<h1>Summary Sale By Month</h1>
					<div id="graph"></div>
					<pre id="code" class="prettyprint linenums">
var week_data = [
  {"period": "2017 W27", "licensed": 3407, "sorned": 660},
  {"period": "2017 W26", "licensed": 3351, "sorned": 629},
  {"period": "2017 W25", "licensed": 3269, "sorned": 618},
  {"period": "2017 W24", "licensed": 3246, "sorned": 661},
  {"period": "2017 W23", "licensed": 3257, "sorned": 667},
  {"period": "2017 W22", "licensed": 3248, "sorned": 627},
  {"period": "2017 W21", "licensed": 3171, "sorned": 660},
  {"period": "2017 W20", "licensed": 3171, "sorned": 676},
  {"period": "2017 W19", "licensed": 3201, "sorned": 656},
  {"period": "2017 W18", "licensed": 3215, "sorned": 622},
  {"period": "2017 W17", "licensed": 3148, "sorned": 632},
  {"period": "2017 W16", "licensed": 3155, "sorned": 681},
  {"period": "2017 W15", "licensed": 3190, "sorned": 667},
  {"period": "2017 W14", "licensed": 3226, "sorned": 620},
  {"period": "2017 W13", "licensed": 3245, "sorned": null},
  {"period": "2017 W12", "licensed": 3289, "sorned": null},
  {"period": "2017 W11", "licensed": 3263, "sorned": null},
  {"period": "2017 W10", "licensed": 3189, "sorned": null},
  {"period": "2017 W09", "licensed": 3079, "sorned": null},
  {"period": "2017 W08", "licensed": 3085, "sorned": null},
  {"period": "2017 W07", "licensed": 3055, "sorned": null},
  {"period": "2017 W06", "licensed": 3063, "sorned": null},
  {"period": "2017 W05", "licensed": 2943, "sorned": null},
  {"period": "2017 W04", "licensed": 2806, "sorned": null},
  {"period": "2017 W03", "licensed": 2674, "sorned": null},
  {"period": "2017 W02", "licensed": 1702, "sorned": null},
  {"period": "2017 W01", "licensed": 1732, "sorned": null}
];
Morris.Line({
  element: 'graph',
  data: week_data,
  xkey: 'period',
  ykeys: ['licensed', 'sorned'],
  labels: ['Licensed', 'SORN']
});
</pre>
				</div>
				<!-- /.row -->
			</div>
		</div>

	</div>
</body>
</html>