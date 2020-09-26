package study.spring.cinephile.service;

import java.util.List;

import study.spring.cinephile.model.Theater;

public interface TheaterService {

	/**
	 * 극장 상세정보 조회
	 * @param Theater input : 극장 Beans
	 * @return 조회된 극장 상세정보 Beans
	 * @throws Exception
	 */
	public Theater getTheaterItem(Theater input) throws Exception;
	
	/**
	 * 지역별 극장 목록 조회
	 * @param Theater input : 극장 Beans
	 * @return 조회된 지역별 극장 list
	 * @throws Exception
	 */
	public List<Theater> getTheaterList(Theater input) throws Exception;
}
