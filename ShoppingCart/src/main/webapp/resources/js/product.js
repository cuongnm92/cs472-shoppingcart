
	

	
	$(init);


function init() {
	setListeners();
	updateTotal(getSavedProducts());

}

function setListeners() {
	$(".add_product").click(addProduct);
}
function addProduct(){
	$.post('product',{name:$('#product_name').val(), price:$('#product_price').val()}, processData)
}


function processData(data){
	data = JSON.parse(data);

	var td0=$('<td>').text(data.id);
	var td1 = $('<td>').text(data.name);
	var td2 = $('<td>').text(data.price);
	var tr = $('<tr>').append(td0).append(td1).append(td2);
	$('#tbl_products>tbody').append(tr);
}

function addProduct() {
	var product = $("#product").val();
	getProduct(product);
}

function getSavedProducts() {
	var products = sessionStorage.getItem("products");
	if (products !== null) {
		return $.parseJSON(products);
	} else {
		return new Array();
	}
}

function saveProduct(product) {
	var added = false;
	var products = sessionStorage.getItem("products");
	if (products !== null) {
		products = $.parseJSON(products);
	} else {
		products = new Array();
	}
	for (var i = 0; i < products.length; i++) {
		var cProduct = products[i]
		if (cProduct != null) {
			if (cProduct.product.productId === product.productId) {
				cProduct.quantity = cProduct.quantity + 1;
				added = true;
			}
		}
	}
	if (!added) {
		products.push(getShoppingProduct(product));
	}

	sessionStorage.setItem("products", JSON.stringify(products));
	postProducts(products)
	updateTotal(products);
}

function postProducts(checkoutProducts) {
	$.post('product', {products: JSON.stringify(checkoutProducts)}, "json");
}

function getShoppingProduct(cProduct) {
	var shoppingProduct = {};
	shoppingProduct.product = cProduct;
	shoppingProduct.quantity = 1;
	return shoppingProduct
}

function updateTotal(productsArray) {
	var totalAmount = 0.0;
	for (i = 0; i < productsArray.length; i++) {
		if (productsArray[i] !== null) {
			var price = productsArray[i].product.price;
			var quantity = productsArray[i].quantity;
			totalAmount = totalAmount + price * quantity;
		}
	}
	$(".total_amount").text(totalAmount.toFixed(2));
}

function productResponse(data) {
	var jsonObj = $.parseJSON(JSON.stringify(data));
	saveProduct(jsonObj)

}

function getProduct(product) {
	$.get('product', {
		product : product
	}, productResponse, "json");
}
