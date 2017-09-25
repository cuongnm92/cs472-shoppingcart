/**
 * 
 */

$(function(){
		
		function updateProduct(){
			$.post('ProductDetailServlet',{id:$('#product').val()}, processData)
		}
		
		function processData(data){
			data = JSON.parse(data);
			$('#availableamount').text(data.amountAvailable);
		}
		
		setTimeout(updateProduct, 5000);
		
		
		
		
		
		
	})