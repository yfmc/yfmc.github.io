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
	
	$(document).on("click",".book",function(){	//예매하기 페이지로
		location.href="../booking/01-booking_time.jsp";
	});
	
	$(".page-link").click(function(e){		//현재 있는 페이지버튼에 색깔넣기
		e.preventDefault();
		$(this).attr("style","background:#a8a8a8");
		$(".page-link").not($(this)).attr("style","background:white");
	});
	
	$.fn.generateStars = function() {		//별점 표시
		return this.each(function(i, e) {
			$(e).html($("<span/>").width($(e).text() * 16));
		});
	};

	// 숫자 평점을 별로 변환하도록 호출하는 함수
	$('.star-prototype').generateStars();
});