$(function() {
	$(".sidebar_link").click(function() {
		// 클릭된 요소를 제외한 나머지에게 selected 클래스 제거 --> 배경이미지 원상복구됨
	     $(".sidebar_link").removeClass("selected");
	
	     // 클릭된 요소에게 selected 클래스 적용 --> 배경이미지 변경됨
	    $(this).addClass("selected");               
	});
});