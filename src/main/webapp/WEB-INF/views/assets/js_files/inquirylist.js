$(document).on("click",".faqgo",function(){		//1:1문의 페이지로 이동
    location.href="../support/qna.do";
});
$(".page-link").click(function(e){		//현재 있는 페이지버튼에 색깔넣기
	e.preventDefault();
	$(this).attr("style","background:#a8a8a8");
	$(".page-link").not($(this)).attr("style","background:white");
});