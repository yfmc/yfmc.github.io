$(function(){

	$("#login-form").submit(function(e){
		e.preventDefault();
		
		//사용자의 입력값을 받아온다.
		var user_id_val = $("#user_id").val();
		var user_pw_val = $("#user_pw").val();

		if(user_id_val==""){	
			alert("아이디를 입력해주세요.");
			$("#user_id").focus();
			return false;
		}else if(user_pw_val=="" ){
			alert("비밀번호 입력해주세요.");
			$("#user_pw").focus();
			return false;
		}
		
		$.post("../login/login_ok.do", {user_id:user_id_val, user_pw:user_pw_val}, function(req){
			
			if(user_id_val == req.item.user_id && req.item.user_pw){
				//$("#inout").html(로그아웃); //<<< (index.jsp의 로그인 )손볼곳!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
				
				alert("로그인 하셨습니다.");
				location.href="../index.do";
				
			}else{
				alert("아이디 또는 비밀번호가 일치하지 않습니다.");
				$("#user_pw").val("");
				$("#user_pw").focus();
				}
			
			},"json");//end $.post
	});//end btn_login
	/*내가 봤을때 서버에서 유효성검사, 프론트에서 유효성 검사를 해야 하는데 이게 백엔드가 아니라 프론트네, 세션 만드는 페이지도 그렇고*/
	
	//사용할 앱의 Javascript 키 설정
	Kakao.init('b712b576f702e0ae294a693b413bf90d');
	
	//카카오 로그인 버튼 생성
	Kakao.Auth.createLoginButton({
		container:'#kakao-login-btn',
		size:'large',
		success: function(authObj){
				Kakao.API.request({
				       url: '/v1/user/me',
				       success: function(res) {
				    	     alert(authObj.access_token);
				             alert(JSON.stringify(res)); //<---- kakao.api.request 에서 불러온 결과값 json형태로 출력
				             alert(JSON.stringify(authObj)); //<----Kakao.Auth.createLoginButton에서 불러온 결과값 json형태로 출력
				             console.log(res.id);//<---- 콘솔 로그에 id 정보 출력(id는 res안에 있기 때문에  res.id 로 불러온다)
				             console.log(res.kaccount_email);//<---- 콘솔 로그에 email 정보 출력 (어딨는지 알겠죠?)
				             console.log(res.properties['nickname']);//<---- 콘솔 로그에 닉네임 출력(properties에 있는 nickname 접근 
				             										// res.properties.nickname으로도 접근 가능 )
				             console.log(authObj.access_token);//<---- 콘솔 로그에 토큰값 출력
				           }
				         })
		},
		fail:function(err){
			alert(JSON.stringify(err));
		}
	});
});