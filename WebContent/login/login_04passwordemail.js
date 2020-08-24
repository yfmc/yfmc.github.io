$(function(){
	
	//페이지가 로드되는 순간 인증번호창에 포커스주기
	$('#code').focus();
	
	
	//인증번호 확인하기
	$("#codesubmit").submit(function(e){
		e.preventDefault();
		if($("#code").val()==""){
			alert("인증번호를 입력해주세요.");
			$("#code").val("");
			$("#code").focus();
		}else{
			var code_val = $("#code").val();
			$.post("login.json", {code:code_val}, function(req){
				
				if(code_val == req.code){
					location.href="05-newpassword.jsp";					
				}else{
					alert("인증번호가 틀렸습니다.");
					$("#code").val("");
					$("#code").focus();	
					
					}
				});//end $.post
		}		
	});//end code submit
	
	$("#code_again").click(function(){
		function random(n1, n2){
            return parseInt(Math.random()*(n2 - n1 + 1)) + n1;
          }
                       
          $(function(){
        	  var value = "";
              for (var i=0; i<6; i++){
                value += random(0,9);
              }
              //인증번호보내기//
              alert("인증번호를 새로 보냈습니다.");
              alert(value);
              
              $("#code").val("");
			  $("#code").focus();
              
 
          });
	});//end code_again
});