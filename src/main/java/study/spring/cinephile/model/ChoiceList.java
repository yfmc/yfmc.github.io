package study.spring.cinephile.model;

import lombok.Data;

@Data
public class ChoiceList {

	private int choiceid;
	private String title;
	private String poster;
	private float rate;
	private String genre;
	private String bookingok;
	
	
	private static int offset;
	private static int listCount;
	
	public static int getOffset() {
		return offset;
	}
	
	public static void setOffset(int offset) {
		ChoiceList.offset=offset;
	}
	
	public static int getListCount() {
		return listCount;
	}
	
	public static void setListCount(int listCount) {
		ChoiceList.listCount=listCount;
	}
}
