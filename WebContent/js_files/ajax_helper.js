$(function(){

	$.ajaxSetup({
		/*ajax 기본 옵션*/
		cache: false,
		dataType:'json',
		timeout:30000,
		
		//통신 시작전 실행할 기능(로딩바 표시)
		beforeSend: function(){
			//현재 통신중인 대상 페이지를 로그로 출력함
			 console.log(">> AJAX통신 시작 >>" + this.url);

		},
		
		//통신 실패시 호출될 함수 (파라미터는 에러내용)
		error:function(error){
			console.log(">>에러!!>>"+error.status);
			
			var error_msg="["+error.status+"]"+ error.statusText;
			
			var code = parseInt(error.status/100);
			if(code==4){
				error_msg="잘못된 요청입니다. \n"+ error_msg;
			}else if(code==5){
				error_msg="서버의 응답이 없습니다. \n"+error_msg;
			}else if(code==2 || code==0){
				error_msg="서버의 응답이 잘못되었습니다.\n" + error_msg;
			}
			alert(error_msg);
		},
		
		//성공,실패에 상관 없이 맨 마지막에 무조건 호출될 ex)로딩바 닫기
		complete: function(){
			console.log(">>AJAX 통신종료");

		}
		
	});
});