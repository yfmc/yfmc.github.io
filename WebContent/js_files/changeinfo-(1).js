$(function(){ 
	// 비밀번호 확인 후 일치하면 회원정보 수정 페이지로 이동
	$(".form-inline").submit(function(e){
		e.preventDefault();
		var userPw=$("#password").val();
		$.post("./userinfo.json",{password:userPw},function(req){
			if(!userPw){
				swal({
					html:"비밀번호를 입력하세요.",
					type:"error",
					showCloseButton:true,
					animation:false
				});
				return;
			}
			else if(userPw!=req.password){
				swal({
					html:"비밀번호가 일치하지 않습니다.",
					type:"error",
					showCloseButton:true,
					animation:false
				});
				return;
			}
			else{
				location.href="../mypage/changeinfo-(2).jsp"
			}
		});
	});
	
	//버튼눌러 페이지 이동

	$(document).on("click",".main_go_btn",function(){
		location.href="../mypage/mypagemain.jsp";
	});
});