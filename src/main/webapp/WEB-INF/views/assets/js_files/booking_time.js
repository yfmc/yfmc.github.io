// 영화관 선택 스크롤 플러그인 관련 코드
document.querySelector('.choose_branch').fakeScroll();

/* jQuery */
$(function() {
	// 좌석 선택 클릭 시 로그인 modal 창
	$("#next-btn").click(function(e) {
		e.preventDefault();
		$(this).attr("data-toggle", "modal");
		$(this).attr("href", "#modal-login");
	});
	
	$("#login-btn").click(function() {
		location.href="02-booking_seats.do"
	});
	
	// 로그인 입력값 검사
	$("#login_modal").submit(function(e) {
		e.preventDefault();
		
		var userid=$("#user_id").val();
		if (!userid) {
			alert("아이디를 입력하세요");
			$("#user_id").focus();
			return false;
		}
		
		var userpw=$("#user_pw").val();
		if (!userpw) {
			alert("비밀번호를 입력하세요");
			$("#user_pw").focus();
			return false;
		}
		
		location.href="02-booking_seats.do";
	});
});