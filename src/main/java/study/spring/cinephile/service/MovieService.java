package study.spring.cinephile.service;

import java.util.List;

import study.spring.cinephile.model.Movie;

public interface MovieService {
	
	/*
	 * 영화 데이터 상세 조회
	 * @param Movie 조회할 영화의 일련번호를 담고 있는 beans
	 * @return 조회된 데이터가 저장된 beans
	 * @throw Exception
	 */
	public Movie getMovieItem(Movie input) throws Exception;
	
	/*
	 * 영화 데이터 목록 조회
	 * @param Movie 검색조건과 페이지 구현 정보를 담고 있는 beans
	 * @return 조회된 결과에 대한 컬렉션
	 * @throw Exception
	 */
	public List<Movie> getMovieList(Movie input) throws Exception;
	
	/*
	 * 영화 데이터가 저장되어 있는 갯수 조회
	 * @param Movie 검색조건을 담고 있느 beans
	 * @return int
	 * @throw Exception
	 */
	public int getMovieCount(Movie input) throws Exception;
	
	/*
	 * 영화 데이터 저장하기
	 * @param Movie 저장할 정보를 담고 있는 beans
	 * @return int
	 * @throw Exception
	 */
	public int addMovie(Movie input) throws Exception;
	
	/*
	 * 영화 데이터 수정하기
	 * @param Movie 수정할 정보를 담고 있는 beans
	 * @return int
	 * @throw Exception
	 */
	public int editMovie(Movie input) throws Exception;
	
	/*
	 * 영화 데이터 삭제하기
	 * @param Movie 삭제할 정보를 담고 있는 beans
	 * @return int
	 * @throw Exception
	 * 
	 * 영화데이터를 삭제하는 기능은 사용할 일이 거의 없을 것이다.
	 */
	public int deleteMovie(Movie input) throws Exception;
}
