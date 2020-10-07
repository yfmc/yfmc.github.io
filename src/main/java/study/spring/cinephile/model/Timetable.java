package study.spring.cinephile.model;

import lombok.Data;

/* 상영시간표 */

@Data
public class Timetable {
	// timetable columns
	private int timetableId;
	private String scrnDay;		// 상영날짜
	private String scrnStart;	// 상영시작시간
	private String scrnEnd;		// 상영종료시간
	private int roomNo;			// 상영관 번호
	private int seatCount;		// 예매된 좌석 수
	
	private int movieId;		// 영화번호
	private int theaterId;		// 극장번호
	
	// movie inner join columns
	private String title;		// 영화제목
	private int ageLimit;		// 관람가 (0: 전체, 1: 12세, 2: 15세, 3: 청불)
	private String posterLink;	// 포스터 이미지 링크
	
	// theater inner join columns
	private int provNo;			// 지역번호
	private String theater;		// 영화관 이름
	
}
