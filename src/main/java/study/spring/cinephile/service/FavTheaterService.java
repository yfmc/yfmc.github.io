package study.spring.cinephile.service;

import java.util.List;

import study.spring.cinephile.model.FavTheater;

public interface FavTheaterService {


	/**
	 * 자주가는영화관 데이터 상세 조회
	 * @param FavTheater
	 * @return 조회 데이터 beans
	 * @throws Exception
	 */
	public FavTheater getFavTheaterItem(FavTheater input) throws Exception;
	
	/**
	 * 자주가는영화관 목록 조회
	 * @param FavTheater
	 * @return 조회 데이터 beans들
	 * @throws Exception
	 */
	public List<FavTheater> getFavTheaterList(FavTheater input) throws Exception;
	
	/**
	 * 자주가는영화관 저장된 개수 조회
	 * @param FavTheater
	 * @return int
	 * @throws Exception
	 */
	public int getFavTheaterCount(FavTheater input) throws Exception;
	
	/**
	 * 자주가는영화관 등록
	 * @param FavTheater
	 * @return int
	 * @throws Exception
	 */
	public int addFavTheater(FavTheater input) throws Exception;
	
	/**
	 * 자주가는영화관 수정
	 * @param FavTheater
	 * @return int
	 * @throws Exception
	 */
	public int editFavTheater(FavTheater input) throws Exception;
	
	/**
	 * 자주가는영화관 삭제
	 * @param FavTheater
	 * @return int
	 * @throws Exception
	 */
	public int deleteFavTheater(FavTheater input) throws Exception;
	
}
