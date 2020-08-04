$(function() {
	$("#next-btn").click(function(e) {
		e.preventDefault();
		$(this).attr("data-toggle", "modal");
		$(this).attr("href", "#modal-login");
	});
	
	$("#login-btn").click(function() {
		location.href="02-booking_seats.jsp"
	});
});