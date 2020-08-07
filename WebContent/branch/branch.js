// 지점 선택 박스 스크롤바
document.querySelector('.branch_list').fakeScroll();

/* 요일 선택 날짜 태그 */
// 현재 날짜 객체 생성
var today=new Date();

// 날짜 리턴 받기
var mm=today.getMonth()+1;	// 0부터 시작하므로 1을 더해준다
var dd=today.getDate();

// 현재 요일 출력하기
var days=["일", "월", "화", "수", "목", "금", "토", "일", "월", "화", "수", "목", "금", "토"];
var dayclass=["sun1", "mon1", "tue1", "wed1", "thu1", "fri1", "sat1"];
var dayno=today.getDay();

// 오늘 날짜 출력 내용
var printday=mm+"/"+dd+"<br />"+days[dayno];

/* jQuery */
$(function() {
	// 자주가는 영화관 등록
	$("#bookmarking").click(function() {
		alert("자주 가는 영화관에 추가되었습니다");
	});
		
	// 요일 선택 slick
	$(".week_btn").slick({
        infinite: false,
        slidesToShow: 7,
        slidesToScroll: 7
    });
	
	// 요일 버튼 실시간 반영
	$("."+dayclass[dayno]).html(printday);
	
	for (var i=0; i<14; i++) {
		if (i<dayno) {
			$(".day"+i).html(mm+"/"+(dd-dayno+i)+"<br />"+days[i]);
			$(".day"+i).addClass("disabled");
		}
		else if (i>dayno) {
			$(".day"+i).html(mm+"/"+(dd-dayno+i)+"<br />"+days[i]);
		}
		else {
			$(".day"+dayno).html(printday);
		}
	}
	
	// 일요일, 토요일 글자색 설정
	$(".day"+0).css("color", "red");
	$(".day"+6).css("color", "blue");
	$(".day"+7).css("color", "red");
	$(".day"+13).css("color", "blue");
});