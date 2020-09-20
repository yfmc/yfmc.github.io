package study.spring.cinephile.model;

import lombok.Data;

@Data
public class Notice {
	private int notice_id;
	private String notice_title;
	private String notice_content;
	private int views;
	private String reg_date;
	private String edit_date;
	
	/** 페이지 구현이 필요한 경우 아래 속성들을 추가한다 (static) */
	// LIMIT 절에서 사용할 검색 시작 위치
	private static int offset;				
	
	// LIMIT 절에서 사용할 검색 데이터 수
	private static int listCount; 		
	
	public static int getOffset() {
		return offset;
	}
	
	public static void setOffset(int offset) {
		Notice.offset = offset;
	}
	
	public static int getListCount() {
		return listCount;
	}
	
	public static void setListCount(int listCount) {
		Notice.listCount = listCount;
	}
}
