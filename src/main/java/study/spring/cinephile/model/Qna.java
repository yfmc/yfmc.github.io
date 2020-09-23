package study.spring.cinephile.model;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Qna {
	
	/** 기본 컬럼 */
	private int qna_id;
	private int members_id;
	private String qna_title;
	private String qna_content;
	private MultipartFile file_img;
	private String user_name;
	private String birthdate;
	private String tel;
	private String email;
	private String reg_date;
	private String answer_check;
	private String answer_content;
	private String answer_date;
	
	/** 페이지 구현이 필요한 경우 아래 속성들을 추가한다 (static) */
	// LIMIT 절에서 사용할 검색 시작 위치
	private static int offset;				
	
	// LIMIT 절에서 사용할 검색 데이터 수
	private static int listCount; 		
	
	public static int getOffset() {
		return offset;
	}
	
	public static void setOffset(int offset) {
		Qna.offset = offset;
	}
	
	public static int getListCount() {
		return listCount;
	}
	
	public static void setListCount(int listCount) {
		Qna.listCount = listCount;
	}
	
}
