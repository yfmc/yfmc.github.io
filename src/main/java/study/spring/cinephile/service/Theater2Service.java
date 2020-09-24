package study.spring.cinephile.service;

import java.util.List;

import study.spring.cinephile.model.Theater2;

public interface Theater2Service {

	/**
	 * 극장 상세정보 조회
	 * @param Theater input : 극장 Beans
	 * @return 조회된 극장 상세정보 Beans
	 * @throws Exception
	 */
	public Theater2 getTheater2Item(Theater2 input) throws Exception;
	
	/**
	 * 지역별 극장 목록 조회
	 * @param Theater input : 극장 Beans
	 * @return 조회된 지역별 극장 list
	 * @throws Exception
	 */
	public List<Theater2> getTheater2List(Theater2 input) throws Exception;
	
	
	/**
	 * 조회한 극장 개수 리턴
	 * 
	 * @param input
	 * @return
	 * @throws Exception
	 */
	public int getTheater2Count(Theater2 input) throws Exception;
}
