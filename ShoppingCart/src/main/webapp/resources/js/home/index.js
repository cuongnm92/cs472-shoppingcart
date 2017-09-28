jQuery(document).ready(function($) {

	$('.list-group-item').on("click", function() {
		var aid = $(this).attr("id");
		// $(this).addClass("active");
		console.log(aid);
		getProducts(aid);
	})

	function getProducts(id) {
		var product = {}

		product["id"] = id;

		$.ajax({
			type : "POST",
			contentType : "application/json",
			url : "/product/list",
			data : JSON.stringify(product),
			dataType : 'json',
			cache : false,
			timeout : 100000,
			success : function(data) {
				console.log(data);
				listProduct(data);
			},
			error : function(e) {
				console.dir(e);
			}
		});
	}

	function listProduct(data) {
		var htmldata = '';
		for(var i=0; i<data.length; i++) {
			htmldata = '<div class="col-lg-4 col-md-6 mb-4">'; 
			htmldata += '<div class="card h-100">'
			htmldata += '<a href="#"><img class="card-img-top" src="' + data[i].image +'" alt=""></a>';
			htmldata += '<div class="card-body">';
			htmldata += '<h4 class="card-title">';
			htmldata += '<a href="#">' + data[i].name + '</a>';
			htmldata += '</h4>';
			htmldata += '<h5>$' + data[i].price + '</h5>';
			htmldata += '<p class="card-text">' + data[i].description + '</p>';
			htmldata += '</div>';
			htmldata += '<div class="card-footer">'
			htmldata += '<small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>'
			htmldata += '</div>';
			htmldata += '</div>';
			htmldata += '</div>';
		}
		$('.product-list').html(htmldata);
	}
});