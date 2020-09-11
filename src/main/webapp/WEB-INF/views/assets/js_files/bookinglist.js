$(function(){
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