package study.spring.cinephile.service;

import study.spring.cinephile.model.FavMovie;

public interface FavMovieService {
	
	/*
	 * 좋아요한 영화
	 * @param Movie 조회할 영화의 일련번호를 담고 있는 beans
	 * @return 조회된 데이터가 저장된 beans
	 * @throw Exception
	 */
	public int putFavMovie(FavMovie input) throws Exception;
}
