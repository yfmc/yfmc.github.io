$(function() {
	console.log("1");
	$("#find__id").submit(function(e){
		e.preventDefault();
		console.log("2");
		var name_id_val = $("#nameforid").val();
		var email_id_val = $("#emailforid").val();
		console.log("3");
		$.post("member.json", {name : name_id_val, user_email : email_id_val}, 
			function(req) {
			console.log("4");
			for (var i = 0; i < req.mem.length; i++) {
				if (email_id_val == req.mem[i].user_email
						&& name_id_val == req.mem[i].name) {
					location.href = "03-successid.jsp";
					return false;
				} else if (name_id_val == "") {
					alert("이름을 입력해주세요.");
					return false;
				} else if (email_id_val == "") {
					alert("이메일을 입력해주세요.");
					return false;
				} else {
					alert("이름과 일치하는 이메일이 없습니다.");
					$("#emailforid").focus();
					return false;
				}
			}
		});// end $.post
	});//end find__id
	
	$("#find__pw").submit(function(e){
		e.preventDefault();
		var name_pw_val = $("#nameforpw").val();
		var id_pw_val = $("#idforpw").val();
		var email_pw_val = $("#emailforpw").val();
	
		$.post("member.json", {name : name_pw_val, user_email : email_pw_val, user_id: id_pw_val}, 
			function(req) {
			
			for (var i = 0; i < req.mem.length; i++) {
				if (name_pw_val == req.mem[i].name 
						&& id_pw_val == req.mem[i].user_id
						&& email_pw_val == req.mem[i].user_email
						) {
					function random(n1, n2){
		                return parseInt(Math.random()*(n2 - n1 + 1)) + n1;
		              }
		                           
		              $(function(){
		            	  var value = "";
		                  for (var i=0; i<6; i++){
		                    value += random(0,9);
		                  }
		                  //인증번호보내기//
		                  alert("입력하신 이메일로 인증번호를 전송하였습니다.");
		                  alert(value);
		                  location.href="04-passwordemail.jsp";
		              });
					return false;
				} else if (name_pw_val == "") {
					alert("이름을 입력해주세요.");
					return false;
				} else if (id_pw_val == "") {
					alert("아이디를 입력해주세요.");
					return false;
				} else if(email_pw_val == ""){
					alert("이메일을 입력해주세요.");
					return false;
				}else{
					alert("이름과 일치하는 이메일이 없습니다.");
					$("#emailforpw").focus();
					return false;
				}
			}
		});// end $.post
	}); //end find__pw
});