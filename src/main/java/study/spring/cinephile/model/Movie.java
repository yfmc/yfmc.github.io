package study.spring.cinephile.model;

import lombok.Data;

@Data
public class Movie {
	private int id;
	private String mname;
	private String actor;
	private String director;
	private int myear;
	private String textmovie;
	private String poster;
	
	private static int offset;
	private static int listCount;
	
	public static int getOffset() {
		return offset;
	}
	
	public static void setOffset(int offset) {
		Movie.offset=offset;
	}
	
	public static int getListCount() {
		return listCount;
	}
	
	public static void setListCount(int listCount) {
		Movie.listCount=listCount;
	}
}
