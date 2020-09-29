$(function(){
	var time = 179; //기준시간 작성
	var min = ""; // 분
	var sec = ""; // 초
	
	//setInterval(함수, 시간) : 주기적인 실행
	var x = setInterval(function(){
		$('#code_submit').prop("disabled",false);
		//parseInt(): 정수를 반환
		min = parseInt(time/60); //몫을 계산
		sec = time%60; 	//나머지를 계산
		
		document.getElementById("timer").innerHTML ="( "+ min + " : " + sec+" )" ;
		time--;
		
		//타임아웃 시
		if(time < 0){
			clearInterval(x); //setInterval() 실행을 끝냄
			document.getElementById("timer").innerHTML ="시간 만료" ;
			$('#code_submit').prop("disabled",true);
			alert("'인증번호 다시 보내기' 버튼을 눌러주세요.");
		}
	}, 1000); 
	
	
	$('#code_form').submit(function(e){
		e.preventDefault();
		var user_email= $('#user_email').val();
		if($('#code_check').val() == ""){
			alert("인증번호를 입력하세요");
			$('#code_check').focus();
			return false;
		}else{
			$.post("../account/03-emailCode_oks",{code_check:$('#code_check').val()}, function(req){
				if(req.item.code != $('#code_check').val()){
					alert("코드가 일치하지 않습니다.");
					$('#code_check').val("");
					$('#code_check').focus();
					return false;
				}else{
					alert("코드가 일치합니다.");
					window.location = "../account/04-Agree.do?user_email="+user_email;
				}
			});
		}

	});
	
	
});