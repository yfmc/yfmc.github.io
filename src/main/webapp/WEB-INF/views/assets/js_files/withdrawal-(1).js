$(function(){
	// 버튼 누르면 비밀번호 확인 후 일치하면 탈퇴의사를 물어본다
	$(".form-inline").submit(function(e){
		e.preventDefault();
		var userPw=$("#password").val();
		/*
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
				swal({
					title:"확인",
					text:"정말 탈퇴하시겠습니까?",
					type:"question",
					confirmButtonText:"Yes",
					showCancelButton:true,
					cancelButtonText:"No",
					}).then(function(result){
					if(result.value){
						location.href="../mypage/withdrawal-(2).do";
					}
				});
			}
		});
		*/
		if(userPw==''){
				swal({
					html:"비밀번호를 입력하세요.",
					type:"error",
					showCloseButton:true,
					animation:false
				});
				return;
			}
			else if(userPw!='123qwe!@#'){
				swal({
					html:"비밀번호가 일치하지 않습니다.",
					type:"error",
					showCloseButton:true,
					animation:false
				});
				return;
			}
			else{
				swal({
					title:"확인",
					text:"정말 탈퇴하시겠습니까?",
					type:"question",
					confirmButtonText:"Yes",
					showCancelButton:true,
					cancelButtonText:"No",
					}).then(function(result){
					if(result.value){
						location.href="../mypage/withdrawal-(2).do";
					}
				});
			}
		});

	
	// 취소 버튼 누르면 마이페이지 메인으로 이동
	$(document).on("click",".maingo",function(){
		location.href="../mypage/mypagemain.do";
	});
});