
$(function(){
	$(document).on("click",".inqgo",function(){ //버튼 누르면 페이지 이동
		location.href="../mypage/inquirylist.do";
});
	$(document).on("click",".maingo",function(){
		location.href="../mypage/mypagemain.do";
	});
});