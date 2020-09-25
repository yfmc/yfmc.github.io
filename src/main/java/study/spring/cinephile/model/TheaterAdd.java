package study.spring.cinephile.model;

import lombok.Data;

/* 자주 가는 영화관 추가 */

@Data
public class TheaterAdd {
	// Primary Key
	private int favTheaterId; 
	
	// columns
	private int theaterId;
	private int membersId;
	private String addedTime;
}
