package study.spring.cinephile.service;

import study.spring.cinephile.model.PasswordOk;

public interface PasswordOkService {
	public int getPasswordOkCount(PasswordOk input) throws Exception;//로그인한 상태에서 패스워드를 다시 확인해야 할 때 사용할 메서드,
																	 //현재 세션의 멤버id(회원일련번호)와 입력받은 비밀번호를 이용해 db와 비교,
																	 //일치하는 데이터가 몇개 있는지 찾는다.(1개여야 함)
}
