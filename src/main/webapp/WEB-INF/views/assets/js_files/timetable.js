/* jQuery */
$(function() {
	/* theater_id 추출 */
	function getTheaterId() {
		var tIndex=location.href.indexOf("theaterId");
		
		if (tIndex==-1) {
			// URL get 파라미터가 없을 경우 기본값
			var tId="1001";
		}
		else {
			// URL에서 get 파라미터로 theaterId 추출
			var tId=location.href.substring(tIndex+10).toString();
		}
		return tId;
	}
	
	/* 클릭 시 상영날짜 추출 및 해당 상영시간표 출력 */
	var scrnDay="";
	
	$(".weekday").click(function() {
		// data 요소에 넣어 둔 상영 날짜 추출
		scrnDay=$(this).attr("data-date");
		console.log(scrnDay);
		
		// 상영시간표 div 영역을 비운다
		$("#film_list").empty();
				
		$.get('timetablejson1?theaterId='+getTheaterId()+'&scrnDay='+scrnDay, function(req) {
			// 상영 중인 영화 개수 조회
			var count1=req.count;
			
			if (count1==0) {
				// 상영 중인 영화가 없을 경우 문구 출력
				$("#film_list").append("<h3>상영시간표가 아직 등록되지 않았습니다</h3>");
			}
			
			else {
				// 상영 중인 영화가 있을 경우 >>> 영화 개수 만큼 반복
				for (var i=0; i<count1; i++) {
					/* 영화 제목 추출 */
					var title=req.movieList[i].title;
					/* 영화 번호 추출 */
					var movieId=req.movieList[i].movieId;
					
					/* <div id="film_list">에 추가할 html 요소 준비 */
					var div=$("<div>").addClass("film_time").attr("id", "film"+i).attr("data-count", count1).attr("data-id", movieId);
					var h3=$("<h3>");
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
					
					/* <div class="film_time"> 블록 추가 */
					$("#film_list").append(div);

					/* JSON에 접근하기 위한 key 값 준비 */
					var countMovieId="count"+movieId;
					// console.log(req[countMovieId]);
					var tableMovieId="table"+movieId;
					
					var btns="";
					for (var j=0; j<req[countMovieId]; j++) {
						var scrnStart=req[tableMovieId][j].scrnStart;
						var scrnEnd=req[tableMovieId][j].scrnEnd;
						var seatCount=244-req[tableMovieId][j].seatCount;
						var roomNo=req[tableMovieId][j].roomNo;
						
						btns+="<a href='booking' ";
						btns+="class='btn btn-lg btn-default' data-toggle='tooltip' ";
						btns+="data-placement='bottom' title='종료 "+scrnEnd;
						btns+="'> <span class='start_time'>"+scrnStart;
						btns+="</span> <span class='seats'>"+seatCount;
						btns+=" / 252</span> <span class='room_no'>"+roomNo+"관</span></a>";
					}
										
					/* <div> 안에 <h3> 블록(관람가+영화제목), 상영시간표 버튼 추가 */
					div.append(h3).append(btns);
					h3.append(ageLimit);
					h3.append(" "+title);

				} // end for movieCount
			} // end else
		}); // end get movieList
	}); // end click
}); // end jQuery