$(function() {
	console.log("1");
	$("#find__id").submit(function(e){
		e.preventDefault();
		console.log("2");
		var name_id_val = $("#nameforid").val();
		var email_id_val = $("#emailforid").val();
		
		if (name_id_val == "") {
			alert("이름을 입력해주세요.");
		}else if(email_id_val == ""){
			alert("이메일을 입력해주세요.");
		}else{ 
		
		console.log("3");
		$.post("../login/findId.do", {user_name : name_id_val, user_email : email_id_val}, 
			function(req) {
			console.log("4 ");

			
				if (req.item != null) {
					location.href = "../login/03-successid.do?user_id=" + req.item.user_id+"&user_name="+name_id_val;
					return false;
				}else{
					alert("이름과 일치하는 이메일이 없습니다.");
					$("#emailforid").focus();
					return false;
				}
			
		});// end $.post
	  }// end else
		
	});//end find__id
	
	$("#find__pw").submit(function(e){
		e.preventDefault();
		var name_pw_val = $("#nameforpw").val();
		var id_pw_val = $("#idforpw").val();
		var email_pw_val = $("#emailforpw").val();
		
		if (name_pw_val == "") {
			alert("이름을 입력해주세요.");
			return false;
		} else if (id_pw_val == "") {
			alert("아이디를 입력해주세요.");
			return false;
		} else if(email_pw_val == ""){
			alert("이메일을 입력해주세요.");
			return false;
		}
	
		$.post("../login/findPw.do", {user_name : name_pw_val, user_email : email_pw_val, user_id: id_pw_val}, 
			function(req) {
				if (req.item) {
					
		                  location.href="../login/goPwCode.do?user_email="+req.item.user_email;
		                  return false;
				} else {
					alert("입력하신 조건으로 가입된 회원이 없습니다.");
					$("#emailforpw").focus();
					return false;
				}
			
		});// end $.post
	}); //end find__pw
});