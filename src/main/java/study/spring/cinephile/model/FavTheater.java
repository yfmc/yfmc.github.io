package study.spring.cinephile.model;

import lombok.Data;


//자주가는 영화관 테이블 모델

@Data
public class FavTheater {
	private int fav_theater_id;
	private String added_time;

	//참조한 컬럼
	private int members_id;
	private int theater_id;
	
	//조인할 컬럼
    private String brand;
    private String branch;
    private int rooms;
    private int seats;
    private String oldAddr;
    
    private String full_name;//영화관 전체이름 ex)CGV 강남
}
