package study.spring.cinephile.model;

import lombok.Data;

@Data
public class Rent {
	
	/** 기본 컬럼 */
	private int rent_id;
	private String sel_region;
	private String sel_theater;
	private String rent_date;
	private String rent_content;
	private int members_id;
	private String user_name;
	private String tel;
	private String email;
	private String reg_date;
	
}
