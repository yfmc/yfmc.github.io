package study.spring.cinephile.model;

import lombok.Data;

@Data
public class StarComment {
	private int comment_star_id;
	private int members_id;
	private int movie_id;
	private String comment;
	private String comment_date;
	private float star_comment;
	private String edit_date;
	private String user_id;
	
	//페이지 구현을 위한 static변수
		private static int offset;
		//LIMIT절에서 사용할 조회할 데이터 수
		private static int listCount;
		
		public static int getOffset() {
			return offset;
		}
		
		public static void setOffset(int offset) {
			StarComment.offset = offset;
		}
		
		public static int getListCount() {
			return listCount;
		}
		
		public static void setListCount(int listCount) {
			StarComment.listCount = listCount;
		}
}
