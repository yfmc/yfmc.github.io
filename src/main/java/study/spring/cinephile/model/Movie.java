package study.spring.cinephile.model;

import lombok.Data;

@Data
public class Movie {
	
	//movie테이블에 있는 컬럼들
	private int movie_id;
	private String opening_date;
	private String title;
	private String synopsis;
	private String poster_link;
	private int accumul_audience;
	private int today_audience;
	private int age_limit;
	private int like_count;
	private float star_info;
	private String movie_nation;
	private String movie_actor;
	private String movie_director;
	private String movie_made_year;
	private String movie_booking;
	private String movie_genre;
	
	//join절에 따른 추가적인 컬럼들
	
	//페이지 구현을 위한 static변수(일단 나는 ajax로 구현할 생각이기
	//static변수를 선언해 놓지는 않는다.
	
}
