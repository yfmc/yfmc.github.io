$(function() {
	/* 상영시간표 선택 후 좌석선택으로 넘어왔을 때 단일정보 노출하기 Ajax */
	$(document).on('click', '#go_to_next', function() {
		
		// 상세정보 영역의 html 태그를 비운다
		$(".chosen_time").empty();
		$(".detail_title").empty();
		$(".detail_info").empty();
		
		/* 예매하려는 상영시간표에 대한 내용을 02 좌석선택 페이지와 03 결제수단 선택 페이지에 노출한다 */
		var timetableId=$(".selected_table").data("id");
		$.get('timetablejson3?timetableId='+timetableId, function(req) {
			console.log("selected timetable id = "+req.timetableInfo.timetableId);
			
			var ageLimit=req.timetableInfo.ageLimit;
			// 관람가에 따라 라벨 차등 부여
			if (ageLimit==0) {
				$(".chosen_time").append("<span class='label label-success'>전체</span>");
				$(".detail_title").append("<span class='label label-success'>전체</span>");
			}
			else if (ageLimit==1) {
				$(".chosen_time").append("<span class='label label-primary'>12</span>");
				$(".detail_title").append("<span class='label label-primary'>12</span>");
			}
			else if (ageLimit==2) {
				$(".chosen_time").append("<span class='label label-warning'>15</span>");
				$(".detail_title").append("<span class='label label-warning'>15</span>");
			}
			else {
				$(".chosen_time").append("<span class='label label-danger'>청불</span>");
				$(".detail_title").append("<span class='label label-danger'>청불</span>");
			}
			
			// 영화 제목 추가
			var title=req.timetableInfo.title;
			$(".chosen_time").append("<span class='film_title'> "+title+"</span>");
			$(".detail_title").append(" "+title);
			
			// 상영날짜 표기 format(2020.10.3 (토)) 설정 준비
			var setDate=new Date(req.timetableInfo.scrnDay);
			var yy=setDate.getFullYear();
			var mm=setDate.getMonth()+1;
			var dd=setDate.getDate();
			var dayno=setDate.getDay();
			var days=["일", "월", "화", "수", "목", "금", "토"];
			var day=days[dayno];
			
			// 상영 정보
			var scrnDay=yy+"."+mm+"."+dd+" ("+day+")";
			var scrnStart=req.timetableInfo.scrnStart;
			var scrnEnd=req.timetableInfo.scrnEnd;
			var theater=req.timetableInfo.theater;
			var roomNo=req.timetableInfo.roomNo;
			
			// 상영정보 html에 출력
			$(".chosen_time").append("<span class='detail'><br />"+scrnDay+" | "+scrnStart+" ~ "+scrnEnd+"<br />"+theater+" "+roomNo+"관</span>");
			$(".detail_info").append(scrnDay+" "+scrnStart+" ~ "+scrnEnd+"<br />"+theater+" "+roomNo+"관 ");
			$(".detail_info").append("<br /><span id='seats'></span>");
			
			// 결제수단 선택 페이지에 영화 포스터 적용
			var posterLink=req.timetableInfo.posterLink;
			$("#film_poster").attr("src", posterLink);
		}); // end of get
		
	});
});