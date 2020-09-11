
        	//이메일 유효성 검사
        	function chkEmail(str) {
            	var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
            	if (regExp.test(str)) return true;
            	else 
            		return false;
        	}
        	
			$(function(){
				
				//validate를 이용한 전체 폼 유효성 검사
				jQuery.validator.setDefaults({
	                onkeyup:false,
	                onclick:false,
	                onfocusout:false,
	                showErrors:function(errorMap,errorList){
	                    if(this.numberOfInvalids()){
	                        swal({
	                            title:"에러",
	                            text:errorList[0].message,
	                            type:"error",
	                            animation:false
	                        }).then(function(result){
	                            setTimeout(function(){
	                                $(errorList[0].element).val('');
	                                $(errorList[0].element).focus();
	                            },100);
	                        });
	                    }
	                }
	            });
				$.validator.addMethod("phones",function(value,element){
	                return this.optional(element)||
	                /^01(?:0|1|[6-9])(?:\d{3}|\d{4})\d{4}$/i.test(value)||
	                /^\d{2,3}\d{3,4}\d{4}$/i.test(value);
	            });
				
				$.validator.addMethod("engnumspe",  function( value, element ) {
					return this.optional(element) || /^.*(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/.test(value);
					}); 
				
				$("#form1").validate({
					submitHandler: function() {
						swal({
		        			title:"확인",
		        			text:"정말 이 정보로 수정하시겠습니까?",
		        			type:"question",
		        			confirmButtonText:"Yes",
		        			showCancelButton:true,
		        			cancelButtonText:"No",
		        		}).then(function(result){
		        			if(result.value){
		        				swal("","수정되었습니다.","success");
		        			}
		        		});

			        },
					rules:{
						user_password:{required:true,minlength:8,maxlength:20,engnumspe:true},
						user_password2:{required:true,equalTo:"#user_password"},
						mail:{required:true,email:true},
						certinum:{required:true},
						phone:{required:true,phones:true},
						address1:{required:true},
						address2:{required:true}
					},
					messages:{
						user_password:{
							required:"비밀번호를 입력하세요.",
							minlength:"비밀번호는 8글자 이상 입력하셔야 합니다.",
							maxlength:"비밀번호는 최대 20자까지 가능합니다.",
							engnumspe:"비밀번호는 영문+숫자+특수문자 조합만 가능합니다."
						},
						user_password2:{
							required:"비밀번호 확인값을 입력하세요.",
							equalTo:"비밀번호 확인이 잘못되었습니다."
						},
						mail:{
							required:"이메일을 입력하세요.",
							email:"이메일 형식이 잘못되었습니다."
						},
						certinum:{
							required:"인증번호를 입력하세요."
						},
						phone:{
							required:"연락처를 입력하세요.",
							phones:"연락처 형식이 잘못되었습니다."
						},
						address1:{
							required:"주소를 검색해주세요.",
						},
						address2:{
							required:"나머지 주소를 입력해주세요."
						}
					}
				});
			    
				//'인증' 버튼 클릭 시 이메일 형식검사
				$(document).on("click","#certigo",function(){
					var mail=$("#mail").val();
					var res=chkEmail(mail);
					if(!res){
						alert("이메일이 형식에 맞지 않습니다.");
						$("#mail").focus();
						return false;
					}
					swal({
						html:"해당 메일로 인증번호가 발송되었습니다."
					});
				});
				
				//'인증번호확인' 버튼 클릭 시 인증번호 검사
				$(document).on("click",".certi_confirm",function(){
					if($("#certinum").val()!="12345"){
						alert("인증번호가 맞지 않습니다.");
						return false;
					}
					swal({
						html:"인증되었습니다."
					});
				});
				
				//주소찾기 팝업
				$(document).on("click",".addressbutton",function(){
					window.open('../mypage/address_search.jsp','','width=550,height=650,scrollbars=no,toolbars=no,menubar=no,status=no,location=no,left=600,top=300');
				});
				
				//'취소' 버튼 누르면 메인으로
				$(document).on("click",".out",function(){
					location.href="../mypage/mypagemain.jsp";
				});
				
				//체크박스를 넣어 원할 때에만 이메일 변경 가능하게 함
				$("#email_enable").change(function(){
					var now=$("#mail").prop("disabled");
					$("#mail").prop("disabled",!now);
					if($("#mail").prop("disabled")==false){
						$("#mail").focus();
					}
					if($("#certigo").css("display") == "none"){
					    $("#certigo").show();
					    $(".certinum").show();
					} else {
					    $("#certigo").hide();
					    $(".certinum").hide();
					}
				});
				
				//체크박스를 넣어 원할 때에만 연락처 변경 가능하게 함
				$("#phone_enable").change(function(){
					var now=$("#phone").prop("disabled");
					$("#phone").prop("disabled",!now);
					if($("#phone").prop("disabled")==false){
						$("#phone").focus();
					}
				});
				
				//체크박스를 넣어 원할 때에만 주소 변경 가능하게 함
				$("#address_enable").change(function(){
					var now=$("#address1").prop("disabled");
					var now2=$("#address2").prop("disabled");
					$("#address1").prop("disabled",!now);
					$("#address2").prop("disabled",!now2);
					if($("#address1").prop("disabled")==false){
						$("#address1").focus();
					}
					if($(".addressbutton").css("display")=="none"){
						$(".addressbutton").show();
					}
					else{
						$(".addressbutton").hide();
					}
				});
				
			});