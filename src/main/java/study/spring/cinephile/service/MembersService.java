package study.spring.cinephile.service;

import java.util.List;

import study.spring.cinephile.model.Members;

public interface MembersService {
	/**
	 * 회원데이터 상세조회
	 * @param Members 조회할 회원의 일련번호를 담고 있는 Beans
	 * @return 조회된 데이터가 저장된 Beans
	 * @throws Exception
	 */
	public Members getMembersEmail() throws Exception;	
	
	/**
	 * 회원데이터 상세조회
	 * @param Members 조회할 회원의 일련번호를 담고 있는 Beans
	 * @return 조회된 데이터가 저장된 Beans
	 * @throws Exception
	 */
	public Members getMembersItem(Members input) throws Exception;
	
	/**
	 * 회원데이터 목록조회
	 * @param Members 검색 조건과 페이지 구현 정보를 담고있는 Beans
	 * @return 조회 결과에 대한 컬렉션
	 * @throws Exception
	 */
	public List<Members> getMembersList(Members input) throws Exception;
	
	/**
	 * 회원 데이터가 저장되어 있는 갯수 조회
	 * @param Members 검색조건을 담고 있는 Beans
	 * @return int
	 * @throws Exception
	 */
	public int getMembersCount(Members input) throws Exception;
	
	/**
	 * 회원데이터 등록하기
	 * @param Members 저장할 정보를 담고 있는 Beans
	 * @return int
	 * @throws Exception
	 */
	public int addMembers(Members input) throws Exception;
	
	/**
	 * 회원 데이터 수정하기
	 * @param Members 수정할 정보를 담고 있는 Beans
	 * @return int
	 * @throws Exception
	 */
	public int editMembers(Members input) throws Exception;
	
	/**
	 * 회원데이터 삭제하기
	 * @param Members 삭제할 회원의 일련번호를 담고 있는 Beans
	 * @return int
	 * @throws Exception
	 */
	public int deleteMembers(Members input) throws Exception;
}
