$(document).ready(function() {
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
											+ '</td>' + '</tr>';
									$("#tbody").append(tbody);

								}
								
							}
						});
					});
		});