$(function() {
	$("#go_to_1st").click(function() {
		var is_ok=confirm("상영시간 선택화면으로 돌아가시겠습니까? 좌석 선택 내용이 모두 사라집니다.");
		
		if (is_ok) {
			location.href="time";
		}
	});
	
	$("#go_to_2nd").click(function() {
		var is_ok=confirm("좌석 선택화면으로 돌아가시겠습니까?");
		
		if (is_ok) {
			location.href="seats";
		}
	});
	
	$(".to_void").click(function() {
		var is_ok=confirm("결제를 취소하고 좌석 선택화면으로 돌아가시겠습니까?");
		
		if (is_ok) {
			location.href="seats";
		}
	});
	
	$("#pay").submit(function(e) {
		e.preventDefault();
		
		var subject=$("input[name='payment']:checked").val();
		
		if (!subject) {
			alert("결제수단을 선택하세요");
			return false;
		}
		else {
			var is_ok=confirm("결제하시겠습니까?");
			
			if (is_ok) {
				location.href="confirmed";
			}
		}
	});
});