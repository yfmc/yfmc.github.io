package study.spring.cinephile.service;

import java.util.List;

import study.spring.cinephile.model.ChoiceMovie;

public interface ChoiceMovieService {
	//목록조회
	public List<ChoiceMovie> getChoiceMovieList(ChoiceMovie input) throws Exception;
	
	//개수조회
	public int getChoiceMovieCount(ChoiceMovie input) throws Exception;
	
	//삭제
	public int deleteChoiceMovie(ChoiceMovie input) throws Exception;

}
