package study.spring.cinephile.model;

import lombok.Data;

@Data
public class FavMovie {
	
	private int fav_movie_id;
	private String liked_time;
	
	//참조관계
	private int movie_id;
	private int members_id;
}
