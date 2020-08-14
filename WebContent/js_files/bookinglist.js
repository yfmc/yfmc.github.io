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
	
	
	$(".page-link").click(function(e){ //현재 있는 페이지버튼에 색깔 넣기
		e.preventDefault();
		$(this).attr("style","background:#a8a8a8");
		$(".page-link").not($(this)).attr("style","background:white");
	});
	
	//예매취소 버튼 누르면 물어보는 팝업
	$(document).on("click",".cancelbtn",function(){
		swal({
			title:"확인",
			text:"정말 예매를 취소하시겠습니까?",
			type:"question",
			confirmButtonText:"Yes",
			showCancelButton:true,
			cancelButtonText:"No",
			animation:false
		}).then(function(result){
			if(result.value){
				swal({
					title:"예매취소",
					text:"성공적으로 예매가 취소되었습니다.",
					type:"success",
					animation:false
				});
			}
		});
	});
});