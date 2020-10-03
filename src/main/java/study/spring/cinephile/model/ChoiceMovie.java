package study.spring.cinephile.model;

import lombok.Data;

@Data
public class ChoiceMovie {
	private int fav_movie_id;
	private String liked_time;
	
	//참조한 컬럼들
	private int movie_id;
	private int members_id;
	
	//join위한 컬럼들
	private String opening_date;
	private String title;
	private String poster_link;
	private float star_info;
	private String movie_made_year;
	private String movie_genre;
	private String age_limit;
	
	
	//페이지구현위함
	private static int offset;
    private static int listCount;
    public static int getOffset() {
    	return offset;
    }
    public static void setOffset(int offset) {
    	ChoiceMovie.offset=offset;
    }
    public static int getListCount() {
    	return listCount;
    }
    public static void setListCount(int listCount) {
    	ChoiceMovie.listCount=listCount;
    }
}
