$(init);

function init() {
	setListeners();
}

function setListeners() {
	$(".checkout_link").click(goToCheckout);
}

function goToCheckout() {
	$.get('checkout');
	
}