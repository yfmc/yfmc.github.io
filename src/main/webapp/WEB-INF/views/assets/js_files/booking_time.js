// 영화관 선택 스크롤 플러그인 관련 코드
document.querySelector('.choose_branch').fakeScroll();

/* jQuery */
$(function() {
	$('[data-toggle="tooltip"]').tooltip();
	
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
		
		location.href="bookingseats";
	});
});