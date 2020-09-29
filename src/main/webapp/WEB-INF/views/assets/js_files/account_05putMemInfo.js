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
	   /* 유효성 검사 추가 함수 */
	   $.validator.addMethod("kor", function(value, element){
		   return /^[가-힣]*$/.test(value);
	   });
	   
	   $.validator.addMethod("phone", function(value, element){
		   return /^01(?:0|1|[6-9])(?:\d{3}|\d{4})\d{4}$/i.test(value)||
         /^\d{2,3}\d{3,4}\d{4}$/i.test(value);
	   });
	   
	   $.validator.addMethod("sixnum", function(value, element){
		   return /([0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[1,2][0-9]|3[0,1]))/i.test(value);
	   });
	   
	   $.validator.addMethod("engnumspe",  function( value, element ) {
		   return /^.*(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=():]).*$/.test(value);
    });
	  
	   /* form태그에 부여한 id속성에 대한 유효성 검사 함수 호출 */
	   $("#join_form").validate({
		  
		   /* 입력검사 규칙 */
		  rules:{
			  //[아이디]필수+글자수 길이제한
			  user_id:{required:true, minlength:6, maxlength:12, alphanumeric:true},
			  //[비밀번호]필수 +글자수 길이제한 + 숫자,영어,특문 포함
			  user_pw:{required:true, minlength:8, maxlength:20,engnumspe:true},
			  //[비밀번화 확인]필수 +특정항목과 일치
			  check_pw:{required:true, equalTo:"#user_pw"},
			  //[이름]필수 + 한글입력
			  user_name:{required:true,minlength:2, maxlength:4, kor:true},
			  //[생년월일]필수 + 날짜형식
			  birthdate:{required:true, sixnum:true},
			  //[성별]필수
			  gender: "required",
			  
			  //[이메일]필수 이미 입력됨
			  //[핸드폰]필수 +핸드폰 형식
			  phone:{
				  required:true,
				  phone:true
				  },
			  addr:"required"
		  },
		  /* 규칙에 맞지 않을 경우의 메세지 */
		  messages:{
			  user_id:{
				  required:"아이디를 입력하세요.",
				  minlength:"아이디는 8글자 이상 입력하셔야 합니다.",
				  maxlength:"아이디는 최대 12자까지 가능합니다.",
				  alphanumeric:"아이디는 영어,숫자만 입력 가능합니다."
				  },
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
			  user_name:{
				  required:"이름을 입력해주세요.",
				  minlength:"이름은 2자 이상 부터 가능합니다.",
				  maxlength:"이름은 4자까지 입력가능 합니다.",
				  kor:"이름은 한글만 입력가능합니다."
			  	  },
			  birthdate:{
				  required:"생년월일을 입력해주세요.",
				  sixnum:"생년월일의 형식이 잘못되었습니다.(주민번호 앞6자리)"
			      },
			  gender:"성별을 선택해주세요.",
			  phone:{
				  required:"핸드폰번호를 입력해주세요.",
				  phone:"연락처 형식이 잘못되었습니다."
			  },
			  addr:"주소를 입력해주세요."	  
		  }
	   });//end validate
	
	   	$("#user_id").change(function(){
	   		$("input[name=checked_id]").val("n");
	   	});
        	   /* 버튼 클릭시 이벤트 */
       		$("#id_uniq_check").click(function(){
       			//입력값을 취득하고, 내용의 존재여부를 검사한다.
       			
       			var user_id_val = $("#user_id").val();
       			
       			
       			
       			if(!user_id_val) {//입력되지 않았다면?
       				alert("아이디를 입력하세요");		//<-- 메시지 표시
       				$("#user_id").focus();		//<-- 커서를 강제로 넣기
       				return false;				//<-- 실행중단
       			}else if(user_id_val.length > 20){
       				alert('아이디는 최대 20자까지 가능합니다.');
       				$("#user_id").val('');
       				$("#user_id").focus();
       				return false;
       			}else if(user_id_val.length < 8){
       				alert('아이디는 8글자 이상 가능합니다.');
       				$("#user_id").val('');
       				$("#user_id").focus();
       				return false;
       			}else{
       				$("input[name=checked_id]").val(user_id_val);
       			}
       			
       			//위의 if문을 무사히 통과했다면 내용이 존재한다는 의미이므로,
       			//입력된 내용을 Ajax를 사용해서 웹 프로그램에게 전달한다.
       			$.post("../userid_cheik.do", {user_id:user_id_val}, function(req){
       				//사용 가능한 아이디인 경우 --> req = {result : "ok"}
       				//사용 불가능한 아이디인 경우 --> req = {result:"fail"}
       				if(req.item != null){
       					alert("사용할 수 없는 아이디 입니다.");
       					$("#user_id").val("");
       					$("#user_id").focus();
       					$("input[name=checked_id]").val("");
       					
       				}else{
       					alert("사용가능한 아이디 입니다.");
       					$("#user_pw").focus();
       					}
       				});//end $.post
       			}); //end click
       		
       		
       			
       			
       			/* 중복검사를 하지 않고 회원가입 버튼을 눌렀을 경우 처리 */
       			$("#btn_submit").click(function(){
       				if($("#user_id").val() != "" && $("input[name=checked_id]").val()=="" || $("input[name=checked_id]").val()!= $("#user_id").val()){
       					alert("아이디 중복확인 버튼을 눌러주세요.");
       					$(this).focus(); //<-- 왜 안먹힘???
       					return false;
       				}
       			}); // end click 
       		
        	   //우편검색버튼
        	   $("#addrsc").postcodifyPopUp();
        	   
        	// #addForm에 대한 submit이벤트를 가로채서 Ajax요청을 전송한다.
//               $("#join_form").ajaxForm({
//                   // 전송 메서드 지정
//                   method: "POST",
//                   // 서버에서 200 응답을 전달한 경우 실행됨
//                   success: function(json) {
//                       console.log(json);
//                       
//                       // json에 포함된 데이터를 활용하여 상세페이지로 이동한다.
//                       if (json.rt == "OK") {
//                           window.location = "${pageContext.request.contextPath}/account/06-Complete.do";
//                       }
//                   }
//               });

           });