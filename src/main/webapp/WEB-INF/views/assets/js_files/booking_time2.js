/* 예매 선택 Ajax 구현 */
$(function() {
	/* Ajax 작동이 아닌 get 방식으로 페이지 접근 시 처리 */
	$(document).ready(function() {
		// 선택한 상영시간표의 극장, 영화, 날짜 console 출력
		console.log($(".selected_theater").data("id"));
		console.log($(".selected_film").data("id"));
		console.log($(".selected_date").data("date"));
		console.log($(".selected_table").data("id"));
		
		var timetableId=$(".selected_table").data("id");
		
		if (timetableId!=undefined) {
			var scrnDay=$(".selected_table").data("date");
			$("a[data-date='"+scrnDay+"']").css("border-bottom", "3px solid red").addClass("selected_date");
			console.log($(".selected_date").data("date"));
		}
	});
	
	/* 지점 선택 시 : 영화 선택영역은 오늘 상영하는 영화 목록으로 새로고침 되고, 날짜 선택영역은 영화 선택 요구 문구가 출력된다 */
	$(document).on('click', '.branch_btn', function() {
		// 좌석선택 버튼을 비활성화
		$("#go_to_next").removeClass("active").attr("href", "");
		
		// 선택한 지점 글씨 css 적용
		$(".choose_branch li").css("color", "black").css("font-weight", "normal").removeClass("selected_theater");
		$(this).css("color", "red").css("font-weight", "bold").addClass("selected_theater");
		
		// 영화선택 div 영역을 비운다
		$(".choose_film").empty();
		
		// 극장 id 추출
		var theaterId=$(this).attr("data-id");
		
		// scrnDay 설정
		var today=new Date();
			
		// 년, 월, 일 각각 리턴 받기
		var yy=today.getFullYear();
		var mm=today.getMonth()+1;	// 0부터 시작하므로 1을 더해준다
		var dd=today.getDate();
		
		if (mm<10) {
			mm="0"+mm;
		}
		if (dd<10) {
			dd="0"+dd;
		}
		
		var scrnDay=yy+"-"+mm+"-"+dd;

		$.get('timetablejson1?theaterId='+theaterId+'&scrnDay='+scrnDay, function(req) {
			var count=req.count;
			
			if (count==0) {
				$(".choose_film").append("<p style='text-align: center;'>상영 중인 영화가 없습니다</p>");
			}
			
			else {
				var ul=$("<ul>");
				$(".choose_film").append(ul);
				
				for (var i=0; i<count; i++) {
					/* 영화 제목 추출 */
					var title=req.movieList[i].title;
					/* 영화 번호 추출 */
					var movieId=req.movieList[i].movieId;
					
					/* <ul>에 추가할 html 요소 준비 */
					var li=$("<li>").addClass("movie_btn").attr("data-id", movieId);
					var ageLimit=$("<span>").addClass("label");
					
					/* 관람가에 따라 <span>에 라벨 색상 및 문구 차등 부여 */
					if (req.movieList[i].ageLimit==0) {
						ageLimit.addClass("label-success").html("전체");
					}
					else if (req.movieList[i].ageLimit==1) {
						ageLimit.addClass("label-primary").html("12");
					}
					else if (req.movieList[i].ageLimit==2) {
						ageLimit.addClass("label-warning").html("15");
					}
					else {
						ageLimit.addClass("label-danger").html("청불");
					}
					
					/* <ul> 안에 <li> 블록(관람가+영화제목) 추가 */
					ul.append(li);
					li.append(ageLimit);
					li.append(" "+title);
				}
			}
			
			// 선택된 날짜 버튼이 있었다면 적용됐던 css를 삭제한다
			$(".weekday").css("border-bottom", "0px");
			// 상영시간표 선택영역을 비우고 영화 선택요구 문구를 출력한다
			$(".choose_time").empty().append("<p style='text-align: center;'>영화를 선택해주세요</p>");
		}); // end get movieList
	}); // end 영화관 click
	
	/* 영화 선택 시 : 선택된 극장, 날짜(없으면 오늘)의 상영시간표를 출력 */
	$(document).on('click', '.movie_btn', function() {
		// 좌석선택 버튼을 비활성화
		$("#go_to_next").removeClass("active").attr("href", "");
		
		// 선택한 영화 css 적용
		$(".choose_film li").css("border", "0px").css("background-color", "#eee").removeClass("selected_film");
		$(this).css("border", "2px solid black").css("background-color", "white").addClass("selected_film");
		
		// scrnDay 설정
		var scrnDay=$(".selected_date").data("date");
		
		// 기존에 선택한 날짜가 있는지 확인하고 없을 시 오늘 날짜를 기본값으로 설정
		if (scrnDay==undefined) {
			var today=new Date();
			
			// 년, 월, 일 각각 리턴 받기
			var yy=today.getFullYear();
			var mm=today.getMonth()+1;	// 0부터 시작하므로 1을 더해준다
			var dd=today.getDate();
			
			if (mm<10) {
				mm="0"+mm;
			}
			if (dd<10) {
				dd="0"+dd;
			}
			
			scrnDay=yy+"-"+mm+"-"+dd;
		}
		
		// 선택한 극장 id 가져오기
		var theaterId=$(".selected_theater").attr("data-id");
		
		// 선택한 영화 id 가져오기
		var movieId=$(this).attr("data-id");
		
		/* 오늘 상영시간표를 기본값으로 출력한다 */
		// 상영시간 선택 div 영역을 비운다
		$(".choose_time").empty();
		
		// scrnDay 버튼 css 적용
		$(".weekday").css("border-bottom", "0px");
		$("a[data-date='"+scrnDay+"']").css("border-bottom", "3px solid red").addClass("selected_date");
		
		$.get('timetablejson2?theaterId='+theaterId+"&scrnDay="+scrnDay+"&movieId="+movieId, function(req) {
			var count=req.count;
			
			if (count==0) {
				$(".choose_time").append("<p style='text-align: center;'>상영시간표가 아직 등록되지 않았습니다</p>")
			}
			
			else {		
				/* 추가할 html 요소 준비 */
				var div=$("<div>").addClass("chosen_film");
				var ageLimit=$("<span>").addClass("label");
				var title=req.tableList[0].title;
				var ul=$("<ul>");
				
				/* 관람가에 따라 <span>에 라벨 색상 및 문구 차등 부여 */
				if (req.tableList[0].ageLimit==0) {
					ageLimit.addClass("label-success").html("전체");
				}
				else if (req.tableList[0].ageLimit==1) {
					ageLimit.addClass("label-primary").html("12");
				}
				else if (req.tableList[0].ageLimit==2) {
					ageLimit.addClass("label-warning").html("15");
				}
				else {
					ageLimit.addClass("label-danger").html("청불");
				}
				
				$(".choose_time").append(div);
				div.append(ageLimit);
				div.append(" "+title);
				$(".choose_time").append(ul);
				
				/* 상영시간표 개수 만큼 반복 */
				var li="";
				for (var i=0; i<count; i++) {
					var scrnStart=req.tableList[i].scrnStart;
					var scrnEnd=req.tableList[i].scrnEnd;
					var seatCount=244-req.tableList[i].seatCount;
					var roomNo=req.tableList[i].roomNo;
					
					li+="<li class='table_btn' data-toggle='tooltip' ";
					li+="data-placement='top' title='종료 "+scrnEnd;
					li+="'> <span class='start_time'>"+scrnStart;
					li+="</span><br /><span class='seats'>"+seatCount+" / 252</span> ";
					li+="<span class='room_no'>"+roomNo+"관</span></li>";
				}
				ul.append(li);
				$('[data-toggle="tooltip"]').tooltip();
			}
		});
	}); // end 영화 click
	
	/* 날짜 선택시 : 선택된 극장, 영화의 상영시간표 목록을 출력 */
	$(document).on('click', '.weekday', function(){
		
		// 좌석선택 버튼을 비활성화
		$("#go_to_next").removeClass("active").attr("href", "");
		
		// 선택한 날짜 css 적용
		$(".weekday").css("border-bottom", "0px").removeClass("selected_date");
		$(this).css("border-bottom", "3px solid red").addClass("selected_date");
		
		// 상영시간 선택 div 영역을 비운다
		$(".choose_time").empty();

		// 선택된 극장 id를 가져온다
		var theaterId=$(".selected_theater").attr("data-id");
		
		function printMessage() {
			$(".choose_time").empty();
			$(".weekday").css("border-bottom", "0px").removeClass("selected_date");
			$(".choose_time").append("<p style='text-align: center;'>영화를 선택해주세요</p>");
		}
		
		// 선택된 극장이 없을 시 영화 선택요구 문구를 출력
		if (theaterId==undefined) {
			printMessage();
		}
		
		// 선택된 영화 id를 가져온다
		var movieId=$(".selected_film").attr("data-id");
		
		// 선택된 영화가 없을 시 영화 선택요구 문구를 출력
		if (movieId==undefined) {
			printMessage();
		}
		
		// 선택된 날짜를 가져온다
		var scrnDay=$(this).attr("data-date");
		
		$.get('timetablejson2?theaterId='+theaterId+"&scrnDay="+scrnDay+"&movieId="+movieId, function(req) {
			var count=req.count;
			
			if (count==0) {
				$(".choose_time").append("<p style='text-align: center;'>상영시간표가 아직 등록되지 않았습니다</p>")
			}
			
			else {
				/* 추가할 html 요소 준비 */
				var div=$("<div>").addClass("chosen_film");
				var ageLimit=$("<span>").addClass("label");
				var title=req.tableList[0].title;
				var ul=$("<ul>");
				
				/* 관람가에 따라 <span>에 라벨 색상 및 문구 차등 부여 */
				if (req.tableList[0].ageLimit==0) {
					ageLimit.addClass("label-success").html("전체");
				}
				else if (req.tableList[0].ageLimit==1) {
					ageLimit.addClass("label-primary").html("12");
				}
				else if (req.tableList[0].ageLimit==2) {
					ageLimit.addClass("label-warning").html("15");
				}
				else {
					ageLimit.addClass("label-danger").html("청불");
				}
				
				$(".choose_time").append(div);
				div.append(ageLimit);
				div.append(" "+title);
				$(".choose_time").append(ul);
				
				/* 상영시간표 개수 만큼 반복 */
				var li="";
				for (var i=0; i<count; i++) {
					var scrnStart=req.tableList[i].scrnStart;
					var scrnEnd=req.tableList[i].scrnEnd;
					var seatCount=244-req.tableList[i].seatCount;
					var roomNo=req.tableList[i].roomNo;
					
					li+="<li class='table_btn' data-toggle='tooltip' ";
					li+="data-placement='top' title='종료 "+scrnEnd;
					li+="'> <span class='start_time'>"+scrnStart;
					li+="</span><br /><span class='seats'>"+seatCount+" / 252</span> ";
					li+="<span class='room_no'>"+roomNo+"관</span></li>";
				}
				ul.append(li);
				$('[data-toggle="tooltip"]').tooltip();
			}
		});
	}); // end 날짜 click
	
	/* 상영시간표 버튼 클릭 : 좌석선택 버튼 활성화 */
	$(document).on('click', '.table_btn', function() {
		// 선택한 버튼 css 적용
		$(".table_btn").css("background-color", "#fff").removeClass("selected_table");
		$(this).css("background-color", "#eee").addClass("selected_table");
		
		// 선택한 상영시간표의 극장, 영화, 날짜, 상영시간표 id console 출력
		console.log($(".selected_theater").data("id"));
		console.log($(".selected_film").data("id"));
		console.log($(".selected_date").data("date"));
		console.log($(".selected_table").data("id"));
		
		// 좌석선택 버튼 활성화
		$("#go_to_next").addClass("active");
		
		// 비로그인 상태면 modal 활성화
		if ($("#go_to_next").data("user")=="0") {
			$("#go_to_next").attr("href", "#modal-login");
		}
	}); // end 상영시간 click
}); // end jQuery