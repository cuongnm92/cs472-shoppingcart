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

<link href="${contextPath}/resources/css/cart/checkout.css"
	rel="stylesheet" type="text/css" media="all" />

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

<script type="text/javascript" src="https://js.stripe.com/v2/"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.2.0/js/tether.min.js"></script>
<script type="text/javascript"
	src="${contextPath}/resources/js/cart/checkout.js"></script>

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900'
	rel='stylesheet' type='text/css'>

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet" />

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>	
	<div class="container">
		<div class="row">
			<div class="col-12 col-sm-8 col-md-6 col-lg-4 mx-auto">
				<div id="pay-invoice" class="card">
					<div class="card-body">
						<div class="card-title">
							<h3 class="text-center">Pay Invoice</h3>
						</div>
						<hr>
						<form action="/address" method="post" novalidate="novalidate">
							<div class="form-group text-center">
								<ul class="list-inline">
									<li class="list-inline-item"><i
										class="text-muted fa fa-cc-visa fa-2x"></i></li>
									<li class="list-inline-item"><i
										class="fa fa-cc-mastercard fa-2x"></i></li>
									<li class="list-inline-item"><i
										class="fa fa-cc-amex fa-2x"></i></li>
									<li class="list-inline-item"><i
										class="fa fa-cc-discover fa-2x"></i></li>
								</ul>
							</div>
							<div class="form-group">
								<label for="cc-payment" class="control-label mb-1">Payment
									amount</label> <input id="cc-pament" name="cc-payment" type="text"
									class="form-control" aria-required="true" aria-invalid="false"
									value="${total}">
							</div>
							<div class="form-group has-success">
								<label for="cc-name" class="control-label mb-1">Name on
									card</label> <input id="cc-name" name="cc-name" type="text"
									class="form-control cc-name valid" data-val="true"
									data-val-required="Please enter the name on card"
									autocomplete="cc-name" aria-required="true"
									aria-invalid="false" aria-describedby="cc-name-error">
								<span class="help-block field-validation-valid"
									data-valmsg-for="cc-name" data-valmsg-replace="true"></span>
							</div>
							<div class="form-group">
								<label for="cc-number" class="control-label mb-1">Card
									number</label> <input id="cc-number" name="cc-number" type="tel"
									class="form-control cc-number identified visa" value=""
									data-val="true"
									data-val-required="Please enter the card number"
									data-val-cc-number="Please enter a valid card number"
									autocomplete="cc-number"> <span class="help-block"
									data-valmsg-for="cc-number" data-valmsg-replace="true"></span>
							</div>
							<div class="row">
								<div class="col-6">
									<div class="form-group">
										<label for="cc-exp" class="control-label mb-1">Expiration</label>
										<input id="cc-exp" name="cc-exp" type="tel"
											class="form-control cc-exp" value="" data-val="true"
											data-val-required="Please enter the card expiration"
											data-val-cc-exp="Please enter a valid month and year"
											placeholder="MM / YY" autocomplete="cc-exp"> <span
											class="help-block" data-valmsg-for="cc-exp"
											data-valmsg-replace="true"></span>
									</div>
								</div>
								<div class="col-6">
									<label for="x_card_code" class="control-label mb-1">Security
										code</label>
									<div class="input-group">
										<input id="x_card_code" name="x_card_code" type="tel"
											class="form-control cc-cvc" value="" data-val="true"
											data-val-required="Please enter the security code"
											data-val-cc-cvc="Please enter a valid security code"
											autocomplete="off">
										<div class="input-group-addon">
											<span class="fa fa-question-circle fa-lg"
												data-toggle="popover" data-container="body" data-html="true"
												data-title="Security Code"
												data-content="<div class='text-center one-card'>The 3 digit code on back of the card..<div class='visa-mc-cvc-preview'></div></div>"
												data-trigger="hover"></span>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="x_zip" class="control-label mb-1">Postal
									code</label> <input id="x_zip" name="x_zip" type="text"
									class="form-control" value="" data-val="true"
									data-val-required="Please enter the ZIP/Postal code"
									autocomplete="postal-code"> <span class="help-block"
									data-valmsg-for="x_zip" data-valmsg-replace="true"></span>
							</div>
							<div>
								<button id="payment-button" type="submit"
									class="btn btn-lg btn-info btn-block">
									<i class="fa fa-lock fa-lg"></i>&nbsp; <span
										id="payment-button-amount">Pay ${total}</span> <span
										id="payment-button-sending" style="display: none;">Sending…</span>
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>