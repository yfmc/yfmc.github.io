// 영화관 선택 스크롤 플러그인 관련 코드
document.querySelector('.choose_branch').fakeScroll();

/* jQuery */
$(function() {
	$('[data-toggle="tooltip"]').tooltip();
	
	/* 상영시간표 선택 >> 좌석선택 페이지로 넘어갈 때 css 처리 함수화 */
	function goToSeats() {
		$(".booking_step1").css("display", "none");
		$(".booking_step2").css("display", "block");
		$(".booking_stage1").addClass("booking_stage2");
		$(".booking_stage2").removeClass("booking_stage1");
		$(".booking_stage2 li:nth-child(1)").attr("id", "go_back");
	}
	
	/* 로그인 한 상태에서 좌석선택 버튼 동작 */
	$(document).on('click', '#go_to_next', function() {
		if ($(this).hasClass("active") && $(this).data("user")=="1") {
			goToSeats();
		}
	});
	
	/* 비로그인 상태에서 modal 로그인 동작 */
	$("#login_modal").submit(function(e){
		e.preventDefault();
		
		// 사용자의 입력값을 받아온다
		var user_id_val = $("#user_id").val();
		var user_pw_val = $("#user_pw").val();

		if (user_id_val=="") {	
			alert("아이디를 입력하세요");
			$("#user_id").focus();
			return false;
		}
		else if (user_pw_val=="" ) {
			alert("비밀번호를 입력하세요");
			$("#user_pw").focus();
			return false;
		}
		
		$.post("login/login_ok.do", {user_id:user_id_val, user_pw:user_pw_val}, function(req) {
			
			if (user_id_val==req.item.user_id && req.item.user_pw) {
				goToSeats();
				$(".close").click();
			}
			else {
				alert("아이디 또는 비밀번호가 일치하지 않습니다");
				$("#user_pw").val("");
				$("#user_pw").focus();
			}
		},"json"); //end $.post
	}); //end btn_login
});