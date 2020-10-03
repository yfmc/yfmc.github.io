package study.spring.cinephile.service;

import study.spring.cinephile.model.Members;

public interface MyPageMembersService {
	
	
	public int editMyPageMembers(Members input) throws Exception;
	

	public int deleteMyPageMembers(Members input) throws Exception;
	
	public int getMyPageMembersCount(Members input) throws Exception;
}
