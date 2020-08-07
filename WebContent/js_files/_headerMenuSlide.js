$(function() {
	// .nav에 마우스가 올라가거나 빠져나오는 경우 호출되는 이벤트
	$(".nav").hover(function() {
		$(this).find(".subnav").slideToggle(50);
	});
});
