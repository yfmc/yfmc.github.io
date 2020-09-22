$(function(){
	
	//페이지가 로드되는 순간 인증번호창에 포커스주기
	$('#code_check').focus();
	
	
	$(document).ready(function(){
	    var check = code;
	    if(check == ''){
	        alert("인증번호를 다시 발급 받으세요.");
	        location.href="${pageContext.request.contextPath}/account/03-emailCode";
	    }   
	     
	});
	
	$("#code_again").click(function(){
		
		$.post("${pageContext.request.contextPath}/account/02-sendCode",{
			
		})
                       
         
              alert("인증번호를 새로 보냈습니다.")
              alert(value);
              
              $("#code").val("");
			  $("#code").focus();
              
 
          
	});//end code_again
});