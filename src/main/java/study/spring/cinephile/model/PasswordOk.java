package study.spring.cinephile.model;

import lombok.Data;

//로그인한 상태에서 비밀번호를 다시한번 확인해야 할 때 사용할 빈즈

@Data
public class PasswordOk {

	private int members_id;//회원일련번호
	private String user_pw;//비밀번호
}
