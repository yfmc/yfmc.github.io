$(function(){
	//버튼 누르면 좋아한 영화 목록에서 삭제
	$(document).on("click",".remove",function(){
		swal({
			title:"확인",
			text:"정말 이 영화를 좋아한 영화 목록에서 제외하시겠습니까?",
			type:"question",
			confirmButtonText:"Yes",
			showCancelButton:true,
			cancelButtonText:"No",
			animation:false
		}).then(function(result){
			if(result.value){
				swal({
					title:"삭제",
					text:"좋아한 영화 목록에서 제외되었습니다.",
					type:"success",
					animation:false
				});
			}
		});
	});
	$(document).on("click",".book",function(){
		location.href="../booking/01-booking_time.jsp";
	});
	
	$(".page-link").click(function(e){
		e.preventDefault();
		$(this).attr("style","background:#a8a8a8");
		$(".page-link").not($(this)).attr("style","background:white");
	});
	
	$.fn.generateStars = function() {
		return this.each(function(i, e) {
			$(e).html($("<span/>").width($(e).text() * 16));
		});
	};

	// 숫자 평점을 별로 변환하도록 호출하는 함수
	$('.star-prototype').generateStars();
});