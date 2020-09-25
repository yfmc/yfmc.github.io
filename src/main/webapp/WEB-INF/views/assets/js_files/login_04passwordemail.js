$(function(){
	
	//페이지가 로드되는 순간 인증번호창에 포커스주기
	$('#code').focus();
	
	
	//인증번호 확인하기
	$("#codesubmit").submit(function(e){
		
		if($("#code").val()==""){
			alert("인증번호를 입력해주세요.");
			$("#code").val("");
			$("#code").focus();
			return false;
		}
	});//end code submit
	

});