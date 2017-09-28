$(document).on('click', '#btnDelete', function() {
	var $row = $(this).closest("tr");
	var username = $row.find(".username").text();
	
	console.log(username);
	deleteUser(username);
	location.reload();
});

function deleteUser(username) {
	var user = {}
	var valid = true;

	user["username"] = username;

	$.ajax({
		type : "POST",
		contentType : "application/json",
		url : "/account/delete",
		data : JSON.stringify(user),
		dataType : 'json',
		cache : false,
		timeout : 100000,
		success : function(data) {
			display(data)
		},
		error : function(e) {
			console.dir(e);
		}
	});
}

function display(account) {
	var htmldata = '<thead><tr><th>#</th><th>Username</th><th>Email</th><th></th></tr></thead><tbody>';
	for(var i=0; i<account.length; i++) {
		htmldata += '<tr>';
		htmldata += '<th scope="row">' + i + 1 + '</th>';
		htmldata += '<td class="username">' + account[i].username + '</td>';
		htmldata += '<td>' + account[i].email + '</td>';
		htmldata += '<td>'
			+ '<a id="btnDelete" class="btn btn-warning btn-xs" href="javascript:void(0);" title="Delete" alt="Delete"><span class="glyphicon glyphicon-pencil"></span></a>'
			+ '</td>';
		htmldata += '</tr>';
		htmldata += '</tbody>';
	}
	$('#user-table').html(htmldata);
}
