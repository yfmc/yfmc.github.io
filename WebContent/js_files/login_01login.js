$(function(){

	$("#btn_login").click(function(){

		var user_id_val = $("#user_id").val();
		var user_pw_val = $("#user_pw").val();
		$.post("login.json", {user_id:user_id_val, user_pw:user_pw_val}, function(req){
			
			if(user_id_val == req.user_id && user_pw_val == req.user_pw){
				location.href="../index.jsp";
				$("#inout").html(로그아웃); //<<< (index.jsp의 로그인 )손볼곳!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
			}else if(user_id_val==""){	
				alert("아이디를 입력해주세요.");
				return false;
			}else if(user_pw_val=="" ){
				alert("비밀번호 입력해주세요.");
				return false;
			}else{
				alert("아이디 또는 비밀번호가 일치하지 않습니다.");
				$("#user_pw").val("");
				$("#user_pw").focus();
				return false;
				}
			
			});//end $.post
	});//end btn_login
});