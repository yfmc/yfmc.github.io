/* 상영시간표 날짜 선택 기능 */

/* viewname 구하기 */
function getViewName() {
	var pathname=location.pathname;
	var viewname=pathname.substring(pathname.lastIndexOf('/'));
	return viewname;
}

/* jQuery */
$(function() {
		
	// 요일 선택 slick (극장별 상영시간표 페이지)
	$(".week_btn").slick({
        infinite: false,
        slidesToShow: 7,
        slidesToScroll: 7
    });
	
	// 요일 선택 slick (예매하기 페이지)
	$(".choose_day").slick({
        infinite: false,
        slidesToShow: 7,
        slidesToScroll: 7
    });
	
	/* 현재 날짜 객체 생성 */
	var today=new Date();
	
	/* 2주치 요일 배열 */
	var days=["일", "월", "화", "수", "목", "금", "토", "일", "월", "화", "수", "목", "금", "토"];
	
	/* 오늘 요일 객체 */
	var dayno=today.getDay();
	
	/* 요일 버튼 실시간 반영 */
	for (var i=0; i<14; i++) {
		
		/* 오늘 기준 앞뒤 구분하여 날짜 출력하기 */
		
		// 오늘보다 이전 : 날짜를 구하고 선택 불가 처리
		if (i<dayno) {
			// 날짜 설정 하기
			var today=new Date();
			today.setDate(today.getDate()-dayno+i);
			
			// 년, 월, 일 각각 리턴 받기
			var yy=today.getFullYear();
			var mm=today.getMonth()+1;	// 0부터 시작하므로 1을 더해준다
			var dd=today.getDate();
			
			// 출력 형식
			var printday=mm+"/"+dd+"<br />"+days[i];
			
			// data-date 입력 형식
			if (mm<10) {
				mm="0"+mm;
			}
			if (dd<10) {
				dd="0"+dd;
			}
			var dataday=yy+"-"+mm+"-"+dd;
			
			// data-date 값에 날짜 넣기
			var getdata=$(".day"+i).data("date");
			$(".day"+i).attr("data-date", dataday);
			
			// html에 날짜 출력
			$(".day"+i).html(printday);
			$(".day"+i).addClass("disabled");
			
			/* 예매 페이지의 경우 출력 날짜 css 적용 */
			if (getViewName()=="/booking") {
				$(".day"+i).css("padding-left", "0px").css("padding-right", "0px").css("font-size", "14px");
			}
			
		}
		// 오늘보다 이후 : 날짜를 구하고 선택 가능하도록 처리
		else if (i>dayno) {
			// 날짜 설정 하기
			var today=new Date();
			today.setDate(today.getDate()-dayno+i);
			
			// 년, 월, 일 각각 리턴 받기
			var yy=today.getFullYear();
			var mm=today.getMonth()+1;	// 0부터 시작하므로 1을 더해준다
			var dd=today.getDate();
			
			// 출력 형식
			var printday=mm+"/"+dd+"<br />"+days[i];
			
			// data-date 입력 형식
			if (mm<10) {
				mm="0"+mm;
			}
			if (dd<10) {
				dd="0"+dd;
			}
			var dataday=yy+"-"+mm+"-"+dd;
			
			// data-date 값에 날짜 넣기
			var getdata=$(".day"+i).data("date");
			$(".day"+i).attr("data-date", dataday);
			
			// html에 날짜 출력
			$(".day"+i).html(printday);
			
			/* 예매 페이지의 경우 출력 날짜 css 적용 */
			if (getViewName()=="/booking") {
				$(".day"+i).css("padding-left", "0px").css("padding-right", "0px").css("font-size", "14px");
			}
		}
		// 오늘 : 날짜를 구하고 선택 가능하도록 처리
		else {
			// 날짜 설정 하기
			var today=new Date();
			
			// 년, 월, 일 각각 리턴 받기
			var yy=today.getFullYear();
			var mm=today.getMonth()+1;	// 0부터 시작하므로 1을 더해준다
			var dd=today.getDate();
			
			// 출력 형식
			var printday=mm+"/"+dd+"<br />"+days[i];
			
			// data-date 입력 형식
			if (mm<10) {
				mm="0"+mm;
			}
			if (dd<10) {
				dd="0"+dd;
			}
			var dataday=yy+"-"+mm+"-"+dd;
			
			// data-date 값에 날짜 넣기
			var getdata=$(".day"+i).data("date");
			$(".day"+i).attr("data-date", dataday);
						
			// html에 날짜 출력			
			$(".day"+dayno).html(printday);
			
			/* 예매 페이지의 경우 출력 날짜 css 적용 */
			if (getViewName()=="/booking") {
				$(".day"+i).css("padding-left", "0px").css("padding-right", "0px").css("font-size", "14px");
			}
		}
	}
	
	// 일요일, 토요일 글자색 설정
	$(".day"+0).css("color", "red");
	$(".day"+6).css("color", "blue");
	$(".day"+7).css("color", "red");
	$(".day"+13).css("color", "blue");
});