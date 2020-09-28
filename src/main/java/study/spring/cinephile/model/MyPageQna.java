package study.spring.cinephile.model;

import lombok.Data;

@Data
public class MyPageQna {
	private int qna_id;
	private int members_id;
	private String qna_title;
	private String qna_content;
	private String file_img;
	private String user_name;
	private String birthdate;
	private String tel;
	private String email;
	private String reg_date;
	private String answer_check;
	private String answer_content;
	private String answer_date;
	private int no;
	
	private static int offset;
    private static int listCount;
    public static int getOffset() {
    	return offset;
    }
    public static void setOffset(int offset) {
    	MyPageQna.offset=offset;
    }
    public static int getListCount() {
    	return listCount;
    }
    public static void setListCount(int listCount) {
    	MyPageQna.listCount=listCount;
    }
}
