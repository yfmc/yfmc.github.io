// 영화관 선택 스크롤 플러그인 관련 코드
document.querySelector('.choose_branch').fakeScroll();

/* 요일 선택 날짜 태그 */
//현재 날짜 객체 생성
var today=new Date();

//날짜 리턴 받기
var mm=today.getMonth()+1;	// 0부터 시작하므로 1을 더해준다
var dd=today.getDate();

//현재 요일 출력하기
var days=["일", "월", "화", "수", "목", "금", "토", "일", "월", "화", "수", "목", "금", "토"];
var dayclass=["sun1", "mon1", "tue1", "wed1", "thu1", "fri1", "sat1"];
var dayno=today.getDay();

//오늘 날짜 출력 내용
var printday=mm+"/"+dd+"<br />"+days[dayno];

/* jQuery */
$(function() {
	// 좌석 선택 클릭 시 로그인 modal 창
	$("#next-btn").click(function(e) {
		e.preventDefault();
		$(this).attr("data-toggle", "modal");
		$(this).attr("href", "#modal-login");
	});
	
	$("#login-btn").click(function() {
		location.href="02-booking_seats.jsp"
	});
	
	// 요일 선택 slick
	$(".choose_day").slick({
        infinite: false,
        slidesToShow: 7,
        slidesToScroll: 7
    });
	
	// 요일 버튼 실시간 반영
	$("."+dayclass[dayno]).html(printday);
	
	for (var i=0; i<14; i++) {
		if (i<dayno) {
			$(".day"+i).html(mm+"/"+(dd-dayno+i)+"<br />"+days[i]).css("font-size", "13px");
			$(".day"+i).addClass("disabled");
		}
		else if (i>dayno) {
			$(".day"+i).html(mm+"/"+(dd-dayno+i)+"<br />"+days[i]).css("font-size", "13px");
		}
		else {
			$(".day"+dayno).html(printday).css("font-size", "13px");
		}
	}
	
	// 일요일, 토요일 글자색 설정
	$(".day"+0).css("color", "red");
	$(".day"+6).css("color", "blue");
	$(".day"+7).css("color", "red");
	$(".day"+13).css("color", "blue");
});