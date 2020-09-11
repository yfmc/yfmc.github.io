package study.spring.cinephile.model;

import lombok.Data;

@Data
public class Faq {
	private int faq_id;
	private String faq_title;
	private String faq_content;
	private String reg_date;
	private String edit_date;
}
