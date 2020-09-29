package study.spring.cinephile.model;

import lombok.Data;

@Data
public class MyPageBookingNo {
	private int booking_no;
	private int price;
	private String payment;
	private String booking_date;
	
	//참조한 컬럼들
	private int members_id;
	private int timetable_id;
}
