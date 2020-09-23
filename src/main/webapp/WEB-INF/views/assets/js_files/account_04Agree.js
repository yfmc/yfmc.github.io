$(function(){
	
	$("#agreeForm").submit(function(e){
		e.preventDefault();
		
		var agree= $("input[name='agree']:checked").val();
		if(!agree || agree == "disagree"){
			alert("계속 진행하시려면 동의를 체크해주세요.");
			return false;
		}
		
		location.href="../account/05-putMemInfo.do";
	});
	
	$(".cancel").click(function(){
		if(confirm("회원가입을 취소하시 겠습니까?")){
			location.href="../index.jsp";
		}
	});
});