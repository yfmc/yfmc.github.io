package study.spring.cinephile.model;

import lombok.Data;

@Data
public class BookingList {
	private int bookingid;
	private String title;
	private String poster;
	private String lookdate;
	private String branch;
	private int peonum;
	private String seatno;
	
	private static int offset;
	private static int listCount;
	
	public static int getOffset() {
		return offset;
	}
	
	public static void setOffset(int offset) {
		BookingList.offset=offset;
	}
	
	public static int getListCount() {
		return listCount;
	}
	
	public static void setListCount(int listCount) {
		BookingList.listCount=listCount;
	}
}
