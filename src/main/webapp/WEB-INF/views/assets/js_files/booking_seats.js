// 예매 인원 버튼 클릭 횟수 count
var count=[0, 0, 0];
// 총 금액 count
var price=0;

$(function() {
	/* 예매 인원 선택 기능 */
		
	// 성인
	$("#minus0").click(function() {
		// 좌석을 선택했을 경우 인원을 줄이지 못하도록 하기
		if (white+green>=count[0]+count[1]+count[2]) {
			alert("선택된 좌석이 있습니다");
			return;
		}
		if (count[0]>0) {
			count[0]--;
			$("#count0").html(count[0]);
			price-=10000;
			$(".selected_price").html(price+"원");
		}
	});
	
	$("#plus0").click(function() {
		count[0]++;
		$("#count0").html(count[0]);
		price+=10000;
		$(".selected_price").html(price+"원");
		
		// 8명 초과 선택 못하게 하기
		if (count[0]+count[1]+count[2]>8) {
			alert("최대 8명 까지만 선택 가능합니다");
			count[0]--;
			$("#count0").html(count[0]);
			price-=10000;
			$(".selected_price").html(price+"원");
		}
	});
	
	// 청소년
	$("#minus1").click(function() {
		// 좌석을 선택했을 경우 인원을 줄이지 못하도록 하기
		if (white+green>=count[0]+count[1]+count[2]) {
			alert("선택된 좌석이 있습니다");
			return;
		}
		if (count[1]>0) {
			count[1]--;
			$("#count1").html(count[1]);
			price-=7000;
			$(".selected_price").html(price+"원");
		}
	});
	
	$("#plus1").click(function() {
		count[1]++;
		$("#count1").html(count[1]);
		price+=7000;
		$(".selected_price").html(price+"원");
		
		// 8명 초과 선택 못하게 하기
		if (count[0]+count[1]+count[2]>8) {
			alert("최대 8명 까지만 선택 가능합니다");
			count[1]--;
			$("#count1").html(count[1]);
			price-=7000;
			$(".selected_price").html(price+"원");
		}
	});
	
	// 장애인
	$("#minus2").click(function() {
		// 좌석을 선택했을 경우 인원을 줄이지 못하도록 하기
		if (white+green>=count[0]+count[1]+count[2]) {
			alert("선택된 좌석이 있습니다");
			return;
		}
		// 장애인석을 선택한 상태에서 장애인 인원 줄이지 못하도록 하기
		if (green>=count[2]) {
			alert("선택된 장애인석이 있습니다");
			return;
		}
		if (count[2]>0) {
			count[2]--;
			$("#count2").html(count[2]);
			price-=5000;
			$(".selected_price").html(price+"원");
		}
	});
	
	$("#plus2").click(function() {
		count[2]++;
		$("#count2").html(count[2]);
		price+=5000;
		$(".selected_price").html(price+"원");
		
		// 장애인 인원 5명 이상 선택 시 장애인석이 4석 뿐임을 안내하기
		if (count[2]>4) {
			alert("[안내] 본 상영관의 장애인 전용 좌석은 4석입니다.\n이용에 참고하여 주시기 바랍니다.\n(4석 이후에도 장애인 요금으로 일반좌석 예매는 가능합니다.)")
		}

		// 8명 초과 선택 못하게 하기
		if (count[0]+count[1]+count[2]>8) {
			alert("최대 8명 까지만 선택 가능합니다");
			count[2]--;
			$("#count2").html(count[2]);
			price-=5000;
			$(".selected_price").html(price+"원");
		}
	});
	
	/* 상영시간 선택으로 돌아가기 */
	$("#go_back").click(function() {
		var is_ok=confirm("상영시간 선택화면으로 돌아가시겠습니까?");
		
		if (is_ok) {
			location.href="01-booking_time.do";
		}
	});
	
	/* ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ */
	
	/* 좌석 버튼 클릭 기능 */
	var white=0;
	var green=0;
	
	$("a.seat_btn").click(function() {
		// 인원 선택을 먼저 하지 않으면 좌석 선택 불가
		if (count[0]+count[1]+count[2]<1) {
			alert("인원을 선택해주세요");
		}
		else {
			// 일반, 장애인 좌석 선택 시 선택좌석 디자인으로 변경
			if ($(this).hasClass("seat_able")) {
				// 선택한 인원보다 많이 선택 불가
				if (white+green>=count[0]+count[1]+count[2]) {
					return;
				}
				$(this).removeClass("seat_able");
				$(this).addClass("seat_selected");
				white++;
				console.log(white+green);
			}
			else if ($(this).hasClass("seat_disabled")) {
				// 장애인 인원 선택 없이는 선택 불가
				if (count[2]==0) {
					alert("장애인 전용 좌석입니다");
					return;
				}
				// 선택한 장애인 인원보다 많이 선택 불가
				if (green>=count[2]) {
					return;
				}
				// 선택한 인원보다 많이 선택 불가
				if (white+green>=count[0]+count[1]+count[2]) {
					return;
				}
				$(this).removeClass("seat_disabled");
				$(this).addClass("seat_selected");
				green++;
				console.log(white+green);
			}
			// 선택좌석 클릭 시 선택취소 : 일반좌석은 흰색, 장애인석은 초록색으로 변경
			else if ($(this).hasClass("seat_selected")) {
				$(this).removeClass("seat_selected");
				// 장애인석 시
				if ($(this).hasClass("ds")) {
					$(this).addClass("seat_disabled");
					green--;
				}
				// 일반좌석 시
				else {
					$(this).addClass("seat_able");
					white--;
				}
				console.log(white+green);
			}
		}
	});
	
	/* ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ */
	
	// 좌석 버튼 클릭 이벤트
	$(".seat_btn").click(function() {
		var seatNum=$(this).data("seat");
		var a=$(".selected_seat").html();
		/* 좌석 선택 시 선택 좌석 번호 하단에 표시 */
		if (a.indexOf(seatNum)<0 && $(this).hasClass("seat_selected")) {
			$(".selected_seat").append(" "+seatNum);
		}
		/* 선택한 좌석 취소 시 하단에서 좌석번호 삭제 */
		else if (a.indexOf(seatNum)>=0) {
			var b=a.replace(" "+seatNum, "");
			$(".selected_seat").html(b);
		}
	});

	/* ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ */
	
	/* 선택 인원과 선택 좌석 수가 일치할 경우 결제하기 버튼 활성화 */
	function check() {
		if (white+green>0 && (white+green)==(count[0]+count[1]+count[2])) {
			$("#go_to_next").addClass("active");
			console.log(">> add ACITVE >>");
			}
		else {
			$("#go_to_next").removeClass("active");
			console.log(">> remove ACITVE >>");
		}
	}
	// 인원, 좌석 버튼 클릭 이벤트 마다 일치 여부 검사하여 버튼 상태 업데이트
	$(".choose").click(check);
	$(".seat_btn").click(check);
	
	/* 활성화된 결제하기 버튼 클릭 시 결제 화면으로 이동 */
	$("#go_to_next").click(function() {
		if ($("#go_to_next").hasClass("active")) {
			location.href="03-booking_payment.do";
		}
	});
});