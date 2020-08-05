// 영화관 선택 스크롤 플러그인 관련 코드
document.querySelector('.choose_branch').fakeScroll();




// 좌석 선택 클릭 시 로그인 modal 창
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