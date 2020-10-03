/* 예매 선택 Ajax 구현 */
$(function() {
	$(document).on('click', '.branch_btn', function() {
		
		// 선택한 지점 글씨 css 적용
		$(".choose_branch li").css("color", "black").removeClass("selected");
		$(this).css("color", "red").addClass("selected");
		
		// 영화선택 div 영역을 비운다
		$(".choose_film").empty();
		
		// 극장 id 추출
		var theaterId=$(this).attr("data-id");
		console.log(theaterId);
		
		// scrnDay 기본값 설정
		var today=new Date();
		
		// 년, 월, 일 각각 리턴 받기
		var yy=today.getFullYear();
		var mm=today.getMonth()+1;	// 0부터 시작하므로 1을 더해준다
		var dd=today.getDate();
		
		var setDate=yy+"-"+mm+"-"+dd;
		console.log(setDate);
		
		$.get('timetablejson1?theaterId='+theaterId+'&scrnDay='+setDate, function(req) {
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
		}); // end get movieList
	}); // end 영화관 click
	
	
	$(document).on('click', '.movie_btn', function() {
		
		// 선택한 영화 css 적용
		$(".choose_film li").css("border", "0px").css("background-color", "#eee").removeClass("clicked");
		$(this).css("border", "2px solid black").css("background-color", "white").addClass("clicked");
		
	}); // end 영화 click
	
	$(document).on('click', '.weekday', function(){
		
		// 선택한 날짜 css 적용
		$(".weekday").css("border-bottom", "0px");
		$(this).css("border-bottom", "3px solid red");
		
		// 상영시간 선택 div 영역을 비운다
		$(".choose_time").empty();
		
		// 좌석선택 버튼을 비활성화
		$("#go_to_next").removeClass("active");
		
		// 선택된 극장 id를 가져온다
		var theaterId=$(".selected").attr("data-id");
		console.log(theaterId);
		
		// 선택된 영화 id를 가져온다
		var movieId=$(".clicked").attr("data-id");
		console.log(movieId);
		
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
	
	$(document).on('click', '.table_btn', function() {
		// 선택한 버튼 css 적용
		$(".table_btn").css("background-color", "#fff");
		$(this).css("background-color", "#eee");
		
		// 좌석선택 버튼 활성화
		$("#go_to_next").addClass("active");
		
	}); // end 상영시간 click
}); // end jQuery