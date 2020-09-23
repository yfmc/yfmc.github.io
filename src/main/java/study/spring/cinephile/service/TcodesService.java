package study.spring.cinephile.service;


import study.spring.cinephile.model.Tcodes;

public interface TcodesService {

	
	
	/**
	 * 인증코드 상세조회
	 * @param Tcodes 조회할 회원의 일련번호를 담고 있는 Beans
	 * @return 조회된 데이터가 저장된 Beans
	 * @throws Exception
	 */
	public Tcodes getCode(Tcodes input) throws Exception;
	
	
	/**
	 * 인증코드 등록하기
	 * @param Tcodes 저장할 정보를 담고 있는 Beans
	 * @return int
	 * @throws Exception
	 */
	public int addCode(Tcodes input) throws Exception;
	
	
	/**
	 * 유효시간 지난 데이터 삭제하기
	 * @param Tcodes 삭제할 회원의 일련번호를 담고 있는 Beans
	 * @return int
	 * @throws Exception
	 */
	public int deleteCode() throws Exception;
}
