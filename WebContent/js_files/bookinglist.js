$(function(){
	$.get("../api/bookinglist.json",function(req){
		var template=Handlebars.compile($("#booking_list").html());
		var html=template(req);
		$(".bodylist").append(html);
	});
	$(document).on("hover",".movieimg",function(){
		
	});
	$(".page-link").click(function(e){
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