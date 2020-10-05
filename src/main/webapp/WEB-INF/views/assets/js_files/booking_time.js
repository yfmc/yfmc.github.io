// 영화관 선택 스크롤 플러그인 관련 코드
document.querySelector('.choose_branch').fakeScroll();

/* jQuery */
$(function() {
	$('[data-toggle="tooltip"]').tooltip();
	
	$("#login_modal").submit(function(e){
		e.preventDefault();
		
		// 사용자의 입력값을 받아온다.
		var user_id_val = $("#user_id").val();
		var user_pw_val = $("#user_pw").val();

		if(user_id_val==""){	
			alert("아이디를 입력해주세요.");
			$("#user_id").focus();
			return false;
		}else if(user_pw_val=="" ){
			alert("비밀번호 입력해주세요.");
			$("#user_pw").focus();
			return false;
		}
		
		$.post("login/login_ok.do", {user_id:user_id_val, user_pw:user_pw_val}, function(req){
			
			if(user_id_val == req.item.user_id && req.item.user_pw){
				location.href="bookingseats";
				
			}else{
				alert("아이디 또는 비밀번호가 일치하지 않습니다.");
				$("#user_pw").val("");
				$("#user_pw").focus();
				}
			
			},"json");//end $.post
	});//end btn_login
	
});