$(function() {
	$(document).on('click', "#go_to_1st", function() {
		var is_ok=confirm("상영시간 선택화면으로 돌아가시겠습니까?");
		
		if (is_ok) {
			$(".booking_step3").css("display", "none");
			$(".booking_step1").css("display", "block");
			$(".booking_stage3 li:nth-child(1)").attr("id", "");
			$(".booking_stage3 li:nth-child(2)").attr("id", "");
			$(".booking_stage3").addClass("booking_stage1");
			$(".booking_stage1").removeClass("booking_stage3");
		}
	});
	
	$(document).on('click', "#go_to_2nd", function() {
		var is_ok=confirm("좌석 선택화면으로 돌아가시겠습니까?");
		
		if (is_ok) {
			$(".booking_step3").css("display", "none");
			$(".booking_step2").css("display", "block");
			$(".booking_stage3 li:nth-child(1)").attr("id", "go_back");
			$(".booking_stage3 li:nth-child(2)").attr("id", "");
			$(".booking_stage3").addClass("booking_stage2");
			$(".booking_stage2").removeClass("booking_stage3");
		}
	});
	
	$(document).on('click', ".to_void", function() {
		var is_ok=confirm("결제를 취소하고 좌석 선택화면으로 돌아가시겠습니까?");
		
		if (is_ok) {
			$(".booking_step3").css("display", "none");
			$(".booking_step2").css("display", "block");
			$(".booking_stage3 li:nth-child(1)").attr("id", "go_back");
			$(".booking_stage3 li:nth-child(2)").attr("id", "");
			$(".booking_stage3").addClass("booking_stage2");
			$(".booking_stage2").removeClass("booking_stage3");
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