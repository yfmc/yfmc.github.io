$(function(){
	/* 플러그인의 기본 설정 옵션 추가 */
	   jQuery.validator.setDefaults({
		   onkeyup:false,
		   onclick:false,
		   onfocusout:false,
		   showErrors:function(errorMap, errorList){
			   if(this.numberOfInvalids()){
				   alert(errorList[0].message);
				   $(errorList[0].element).val("");
				   $(errorList[0].element).focus();
			   }
		   }
	   });
		
		//유효성 검사 추가함수
		$.validator.addMethod("engnumspe",  function( value, element ) {
			   return /^.*(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/.test(value);
			   
	    });
		
		$("#pwagain").validate({
			  
			   /* 입력검사 규칙 */
			  rules:{
				  //[비밀번호]필수 +글자수 길이제한 + 숫자,영어,특문 포함
				  user_pw:{required:true, minlength:8, maxlength:20,engnumspe:true},
				  //[비밀번화 확인]필수 +특정항목과 일치
				  check_pw:{required:true, equalTo:"#user_pw"}, 		  
			  },
			  
			  /* 규칙에 맞지 않을 경우의 메세지 */
			  messages:{
				  
				  user_pw:{
					  required:"비밀번호를 입력하세요.", 
					  minlength:"비밀번호는 8글자 이상 입력하셔야 합니다.",
					  maxlength:"비밀번호는 최대 20자까지 가능합니다.",
				      engnumspe:"비밀번호는 영문,숫자,특수문자 조합이어야 합니다. "
					  },
				  check_pw:{
					  required:"비밀번호를 확인해주세요.",
					  equalTo:"비밀번호가 일치하지 않습니다."
				  	  },
				  
			  }
		   });//end validate
		
		$("#pwagain").submit(function(e){
			e.preventDefault();
			
				var user_pw_val = $("#user_pw").val();
				$.post("login.json", {user_pw:user_pw_val}, function(req){
					
					location.href="06-successpassword.jsp";		
					});//end $.post
					
		});

});