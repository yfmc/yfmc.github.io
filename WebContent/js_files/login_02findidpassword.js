$(function() {
	
	function ajaax($){
		var name_id_val = $("#nameforid").val();
		var email_id_val = $("#emailforid").val();
	
		$.post("member.json", {name_id : name_id_val, email_id : email_id_val}, 
			function(req) {
			
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
	};
	
	$("#find_id").click(function(){
		jQuery(ajaax);
	});// end findid

});