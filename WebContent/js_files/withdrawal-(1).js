$(function(){
        	// 버튼 누르면 탈퇴 의사 물어보기
        	$(document).on("click",".withdgo",function(){
        		swal({
        			title:"확인",
        			text:"정말 탈퇴하시겠습니까?",
        			type:"question",
        			confirmButtonText:"Yes",
        			showCancelButton:true,
        			cancelButtonText:"No",
        		}).then(function(result){
        			if(result.value){
        				location.href="../mypage/withdrawal-(2).jsp";
        			}
        		});
        	});
        	// 취소 버튼 누르면 마이페이지 메인으로 이동
        	$(document).on("click",".maingo",function(){
        		location.href="../mypage/mypagemain.jsp";
        	});
        });