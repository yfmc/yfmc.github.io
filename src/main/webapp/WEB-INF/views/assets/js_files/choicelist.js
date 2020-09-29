$(function(){
	$(".imgimg").mouseenter(function(){				//포스터에 마우스 올리면 '크게 보기' 글자가 뜨며 마우스를 떼면 사라짐
		$(this).next().attr("style","display:'';");
	});
	$(".moreview").mouseenter(function(){
		$(this).attr("style","display:'';");
	});
	$(".imgimg").mouseleave(function(){
		$(this).next().attr("style","display:none;");
	});
	$(".moreview").mouseleave(function(){
		$(this).attr("style","display:none;");
	});
	
	
	$(document).on("click",".book",function(){	//예매하기 페이지로
		location.href="../booking/01-booking_time.do";
	});
	
	
	$.fn.generateStars = function() {		//별점 표시
		return this.each(function(i, e) {
			$(e).html($("<span/>").width($(e).text() * 16));
		});
	};

	// 숫자 평점을 별로 변환하도록 호출하는 함수
	$('.star-prototype').generateStars();
});