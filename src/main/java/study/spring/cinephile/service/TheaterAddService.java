package study.spring.cinephile.service;

import java.util.List;

import study.spring.cinephile.model.Theater;
import study.spring.cinephile.model.TheaterAdd;

public interface TheaterAddService {
	
	/**
	 * 자주 가는 영화관 등록
	 * @param TheaterAdd input : 자주 가는 영화관 Beans
	 * @return int : 저장된 데이터 수
	 * @throws Exception
	 */
	public int addTheater(TheaterAdd input) throws Exception;
	
	/**
	 * 자주 가는 영화관에 등록되어 있는지 확인
	 * @param TheaterAdd input : 자주 가는 영화관 Beans
	 * @return int : 등록되어있으면 1, 없으면 0
	 * @throws Exception
	 */
	public int countFavTheater(TheaterAdd input) throws Exception;
	
	/**
	 * 로그인 한 회원의 자주 가는 영화관 목록 조회
	 * @param TheaterAdd input : 자주 가는 영화관 Beans
	 * @return 자주 가는 영화관 목록
	 * @throws Exception
	 */
	public List<TheaterAdd> getFavTheaterList(TheaterAdd input) throws Exception;
}
