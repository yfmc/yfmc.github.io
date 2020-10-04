package study.spring.cinephile.model;

import lombok.Data;

@Data
public class MyPageBookingList {
	//timetable 테이블
	private int timetable_id;
	private String scrn_day;
	private String scrn_start;
	private String scrn_end;
	private int room_no;
	private int seat_count;
	private int movie_id;
	private int theater_id;
	
	//bookingno 테이블
	private int booking_no;
	private int price;
	private String payment;
	private String booking_date;
	private int members_id;
	
	//theater 테이블
	private String brand;
	private String branch;
	
	//movie 테이블
	private String title;
	private String poster_link;
	private String movie_made_year;
	
	//booking테이블
	private String seat_no;

	//새로 만든 컬럼
	private String start_time;
	private String bookingdt;
	private String start;
	private String today;
	private String plus30min;
	
	//페이지구현위함
	private static int offset;
    private static int listCount;
    public static int getOffset() {
    	return offset;
    }
    public static void setOffset(int offset) {
    	MyPageBookingList.offset=offset;
    }
    public static int getListCount() {
    	return listCount;
    }
    public static void setListCount(int listCount) {
    	MyPageBookingList.listCount=listCount;
    }
}
