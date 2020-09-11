
        //버튼 누르면 페이지 이동
        $(function(){
        	$(document).on("click",".inqgo",function(){
        		location.href="../mypage/inquirylist.jsp";
        	});
        	$(document).on("click",".maingo",function(){
        		location.href="../mypage/mypagemain.jsp";
        	});
        });