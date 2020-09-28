package study.spring.cinephile.model;

import lombok.Data;

@Data
public class Rent {
	
	/** 기본 컬럼 */
	private int rent_id;
	private String theater_id;
	private String rent_date;
	private String rent_content;
	private String user_name;
	private String birthdate;
	private String tel;
	private String email;
	private int members_id;
	private String reg_date;
	
}
