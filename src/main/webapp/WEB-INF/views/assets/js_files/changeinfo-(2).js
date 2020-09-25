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
					
					rules:{
						user_password:{required:true,minlength:8,maxlength:20,engnumspe:true},
						user_password2:{required:true,equalTo:"#user_password"},
						mail:{required:true,email:true},
						phone:{required:true,phones:true},
						address:{required:true},
						details:{required:true}
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
						phone:{
							required:"연락처를 입력하세요.",
							phones:"연락처 형식이 잘못되었습니다."
						},
						address:{
							required:"주소를 검색해주세요.",
						},
						details:{
							required:"나머지 주소를 입력해주세요."
						}
					}
				});
				
				//'취소' 버튼 누르면 메인으로
				$(document).on("click",".out",function(){
					location.href="../mypage/mypagemain.do";
				});
				
				//체크박스를 넣어 원할 때에만 이메일 변경 가능하게 함
				$("#email_enable").change(function(){
					var now=$("#mail").prop("readonly");
					$("#mail").prop("readonly",!now);
					if($("#mail").prop("readonly")==false){
						$("#mail").focus();
						$(".hiddenstar1").show();
					}
					else{
						$(".hiddenstar1").hide();
					}
				});
				
				//체크박스를 넣어 원할 때에만 연락처 변경 가능하게 함
				$("#phone_enable").change(function(){
					var now=$("#phone").prop("readonly");
					$("#phone").prop("readonly",!now);
					if($("#phone").prop("readonly")==false){
						$("#phone").focus();
						$(".hiddenstar2").show();
					}
					else{
						$(".hiddenstar2").hide();
					}
				});
				
				//체크박스를 넣어 원할 때에만 주소 변경 가능하게 함
				$("#address_enable").change(function(){
					var now=$("#address").prop("readonly");
					var now2=$("#details").prop("readonly");
					var now3=$("#postcode").prop("readonly");
					$("#address").prop("readonly",!now);
					$("#details").prop("readonly",!now2);
					$("#postcode").prop("readonly",!now3);
					$(".keyword").addClass("form-control");
					$(".keyword").attr("placeholder","주소를 검색하세요");
					$(".search_button").addClass("btn");
					$(".search_button").addClass("btn-info");
					
					if($("#address").prop("readonly")==false){
						$("#details").focus();
					}
					if($("#postcodify").css("display")=="none"){
						$("#postcodify").show();
						$(".hiddenstar3").show();
						$("#details").val($("#details").val());
					}
					else{
						$("#postcodify").hide();
						$(".hiddenstar3").hide();
						$("#details").val($("#details").val());
					}
				});
				$("#postcodify").postcodify({	//주소검색
			        insertAddress : "#address",
			        insertDetails : "#details",
			        insertPostcode5 : "#postcode",
			        hideOldAddresses : false,
			        afterSelect : function() {
			        $("#postcodify").find(".postcodify_search_result,.postcodify_search_status").remove();
			        $("#details").val("");
			        }
			    });
			});