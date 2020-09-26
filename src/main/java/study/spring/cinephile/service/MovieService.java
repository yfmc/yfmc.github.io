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
	 * 영화 데이터 목록 조회 - 예매순
	 * @param Movie 검색조건과 페이지 구현 정보를 담고 있는 beans
	 * @return 조회된 결과에 대한 컬렉션
	 * @throw Exception
	 */
	public List<Movie> getMovieBooking(Movie input) throws Exception;
	
	/*
	 * 영화 데이터 목록 조회 - 평점순
	 * @param Movie 검색조건과 페이지 구현 정보를 담고 있는 beans
	 * @return 조회된 결과에 대한 컬렉션
	 * @throw Exception
	 */
	public List<Movie> getMovieStarInfo(Movie input) throws Exception;
	
	/*
	 * 영화 데이터 목록 조회 - 관람객순
	 * @param Movie 검색조건과 페이지 구현 정보를 담고 있는 beans
	 * @return 조회된 결과에 대한 컬렉션
	 * @throw Exception
	 */
	public List<Movie> getMovieTodayAudience(Movie input) throws Exception;
	
	/*
	 * 영화 데이터 목록 조회 - 개봉일순
	 * @param Movie 검색조건과 페이지 구현 정보를 담고 있는 beans
	 * @return 조회된 결과에 대한 컬렉션
	 * @throw Exception
	 */
	public List<Movie> getMovieOpeningDate(Movie input) throws Exception;
	
	/*
	 * 영화 데이터 목록 조회 - 좋아요순
	 * @param Movie 검색조건과 페이지 구현 정보를 담고 있는 beans
	 * @return 조회된 결과에 대한 컬렉션
	 * @throw Exception
	 */
	public List<Movie> getMovieLikeCount(Movie input) throws Exception;
	
	/*
	 * 영화 데이터가 저장되어 있는 갯수 조회
	 * @param Movie 검색조건을 담고 있느 beans
	 * @return int
	 * @throw Exception
	 */
	public int getMovieCountTitle(Movie input) throws Exception;
	
	public int getMovieCountActor(Movie input) throws Exception;
	
	public int getMovieCountDirector(Movie input) throws Exception;
	
	public int getMovieCountOptionAll(Movie input) throws Exception;
	
	/*
	 * 영화 데이터 저장하기
	 * @param Movie 저장할 정보를 담고 있는 beans
	 * @return int
	 * @throw Exception
	 */
	public int addMovie(Movie input) throws Exception;
	
	
	/*
	 * 영화 데이터 목록 조회 - 검색조회
	 * @param Movie 검색조건과 페이지 구현 정보를 담고 있는 beans
	 * @return 조회된 결과에 대한 컬렉션
	 * @throw Exception
	 */
	public List<Movie> getMovieSearchTitle(Movie input) throws Exception;
	
	public List<Movie> getMovieSearchActor(Movie input) throws Exception;
	
	public List<Movie> getMovieSearchDirector(Movie input) throws Exception;
	
	public List<Movie> getMovieSearchOptionAll(Movie input) throws Exception;

}
