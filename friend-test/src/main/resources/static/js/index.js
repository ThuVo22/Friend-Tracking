//Send data from server back to the client
$(document).ready(
		function() {
			$('#searchform').submit(
					function(e) {
						e.preventDefault();
						$.ajax({
							type : "post",
							url : "/",
							data : $(this).serialize(),
							success : function(data) {
								$("#tbody").html("");
								for (var i = 0; i < data.length; i++) {
									var tbody = '<tr>' + '<td>' + data[i].id
											+ '</td>' + '<td>' + data[i].name
											+ '</td>' + '<td>' + data[i].age
											+ '</td>' + '<td>' + data[i].school
											+ '</td>' + '<td>'
											+ data[i].cellphone + '</td>'
											+ '<td>' + data[i].status + '</td>'
											+ '</tr>';
									$("#tbody").append(tbody);

								}

							}
						});
					});
				});

// Filterable Table
$(document).ready(function() {
	$("#myInput").on("keyup", function() {
		var value = $(this).val().toLowerCase();
		$("#tbody tr").filter(function() {
			$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
		});
	});
});