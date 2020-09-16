$(function() {
	// 메인으로 가기
	$(".go_to_main").click(function() {
		location.href="../index.jsp";
	});
	
	// 나의 예매내역으로 가기
	$(".go_to_mypage").click(function() {
		location.href="../mypage/bookinglist.jsp";
	});
});