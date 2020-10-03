// 영화관 선택 스크롤 플러그인 관련 코드
document.querySelector('.choose_branch').fakeScroll();

/* jQuery */
$(function() {
	/* 활성화된 좌석선택 버튼 클릭 시 로그인 modal 창 */
	$("#go_to_next").click(function(e) {
		if ($("#go_to_next").hasClass("active")) {
			e.preventDefault();
			$(this).attr("data-toggle", "modal");
			$(this).attr("href", "#modal-login");
		}
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
		
		location.href="booking/seats";
	});
});