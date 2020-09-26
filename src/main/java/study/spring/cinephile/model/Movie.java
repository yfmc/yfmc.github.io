package study.spring.cinephile.model;

import java.util.List;

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
	private static String[] movie_genre_list;
	private static String[] movie_nation_list;
	
	//join절에 따른 추가적인 컬럼들
	
	//페이지 구현을 위한 static변수
	private static int offset;
	//LIMIT절에서 사용할 조회할 데이터 수
	private static int listCount;

	public void setGenreList(String genre_string) {
		Movie.movie_genre_list = genre_string.split(",");
	}
	
	public void setnationList(String nation_string) {
		Movie.movie_nation_list = nation_string.split(",");
	}
	
	public static int getOffset() {
		return offset;
	}
	
	public static void setOffset(int offset) {
		Movie.offset = offset;
	}
	
	public static int getListCount() {
		return listCount;
	}
	
	public static void setListCount(int listCount) {
		Movie.listCount = listCount;
	}
	
	
}
