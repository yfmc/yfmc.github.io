$(function(){
		$("#email_uniq_check").click(function(){
			var emailPattern = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
			if($('#user_email').val()==''){
				alert('이메일을 입력해주세요.');
				$('#user_email').focus();
			}else if(!emailPattern.test($('#user_email').val())){
				alert('이메일 형식이 올바르지 않습니다.');
				$('#user_email').val('');
				$('#user_email').focus();
			}else{
				//위의 if문을 무사히 통과했다면 내용이 존재한다는 의미이므로,
				//입력된 내용을 Ajax를 사용해서 웹 프로그램에게 전달한다.
			
			var user_email_val = $("#user_email").val();
			
				$.post("../Emaila_ok.do", {user_email:user_email_val}, function(req){
					//입력된 값을 DB조회 한다. 리턴값으 Map<value, object>
					
					if(req.item != null){
						alert("사용할 수 없는 이메일 입니다.");
						$("#user_email").val("");
						$("#user_email").focus();					
					}else{
						alert("사용가능한 이메일 입니다.");
						$('#email_check').prop("disabled",false); 
						$("#email_check").focus();
						}
					 
					});//end $.post
			}
		}); //uniq_chekc end
			
		
        $("#email_check").change(function(){
        	if($('#user_email').val()==$(this).val()){
        		$('#email_submit').prop("disabled",false);        		
        	}else{
        		alert('이메일이 일치하지 않습니다.');
        		$('#email_check').val('');
        		$('#email_check').focus();        		
        	}
        }); //double check end
        

       });
           