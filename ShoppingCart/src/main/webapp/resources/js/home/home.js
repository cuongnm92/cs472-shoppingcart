jQuery(document).ready(function($) {

	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");
	$(document).ajaxSend(function(e, xhr, options) {
		xhr.setRequestHeader(header, token);
	});

	$("#custom-search-input").submit(function(event) {
		// Prevent the form from submitting via the browser.
		event.preventDefault();
		searchUser();
	});

	$("#btnSaveUserRole").click(function() {
		saveUserRole();
	});
});

$(document).on('click', '#btnEditRole', function() {
	var $row = $(this).closest("tr");
	var $username = $row.find(".username").text();
	var $role = $row.find(".role").text();
	$("#username-modal").val($username);
	$("#role-modal").val($role);
	$("#popupEditUserRole").modal("show");
});

function saveUserRole() {
	var user = {}
	var valid = true;

	user["username"] = $("#username-modal").val();
	user["role"] = $("#role-modal").val();

	$.ajax({
		type : "POST",
		contentType : "application/json",
		url : "/admin/manage-users/role",
		data : JSON.stringify(user),
		dataType : 'json',
		cache : false,
		timeout : 100000,
		success : function(data) {
			searchUser();
			$("#popupEditUserRole").modal("hide");
		},
		error : function(e) {
			console.dir(e);
		}
	});
}

function display(account) {
	var htmldata = '<thead><tr><th>&numero;</th><th>Username</th><th>Role</th><th>Action</th></thead><tbody>';
	htmldata += '<tr>';
	htmldata += '<td class="no">' + '<span>1</span>' + '</td>';
	htmldata += '<td class="username">' + '<span>' + account.username
			+ '</span>' + '</td>';
	htmldata += '<td class="role">' + '<span>' + account.role + '</span>'
			+ '</td>';
	htmldata += '<td>'
			+ '<a id="btnEditRole" class="btn btn-warning btn-xs" href="javascript:void(0);" title="Edit" alt="Edit"><span class="glyphicon glyphicon-pencil"></span></a>'
			+ '</td>';
	htmldata += '</tr>';
	htmldata += '</tbody>';
	$('#user-table').html(htmldata);
}

function searchUser() {
	var search = {}
	search["username"] = $("#username").val();
	$.ajax({
		type : "POST",
		contentType : "application/json",
		url : "/admin/manage-users/search",
		data : JSON.stringify(search),
		dataType : 'json',
		cache : false,
		timeout : 100000,
		success : function(data) {
			display(data);
		},
		error : function(e) {
			$("#admin-message").removeClass("hidden");
   			setTimeout(function(){
   				$("#admin-message").addClass("hidden");
   			}, 3000);
		}
	});
}
