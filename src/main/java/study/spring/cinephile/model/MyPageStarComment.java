package study.spring.cinephile.model;

import lombok.Data;

@Data
public class MyPageStarComment {
	private int comment_star_id;
	private int members_id;
	private int movie_id;
	private String comment;
	private String comment_date;
	private float star_comment;
	private String edit_date;
}
