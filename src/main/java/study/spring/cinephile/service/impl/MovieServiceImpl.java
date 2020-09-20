package study.spring.cinephile.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import study.spring.cinephile.model.Movie;
import study.spring.cinephile.service.MovieService;

@Service
@Slf4j
public class MovieServiceImpl implements MovieService{
	
	//myBatis
	@Autowired
	SqlSession sqlSession;
	
	//영화 데이터 상세 조회
	@Override
	public Movie getMovieItem(Movie input) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
	//영화 데이터 목록 조회 - 예매순으로
	@Override
	public List<Movie> getMovieBooking(Movie input) throws Exception {
		List<Movie> result = null;
		
		try {
			result = sqlSession.selectList("MovieMapper.selectMovieBooking", input);
			
			if(result == null) {
				throw new NullPointerException("result=null");
			}
		}catch(NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 영화 데이터가 없습니다.");
		}catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회 실패");
		}
		return result;
	}
	
	//영화 데이터 목록 조회 - 평점순으로
	@Override
	public List<Movie> getMovieStarInfo(Movie input) throws Exception {
		List<Movie> result = null;
		
		try {
			result = sqlSession.selectList("MovieMapper.selectStarInfo", input);
			
			if(result == null) {
				throw new NullPointerException("result=null");
			}
		}catch(NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 영화 데이터가 없습니다.");
		}catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회 실패");
		}
		return result;
	}
	
	//영화 데이터 목록 조회  - 관람객순으로
	@Override
	public List<Movie> getMovieTodayAudience(Movie input) throws Exception {
		List<Movie> result = null;
		
		try {
			result = sqlSession.selectList("MovieMapper.selectTodayAudience", input);
			
			if(result == null) {
				throw new NullPointerException("rseult=null");
			}
		}catch(NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 영화 데이터가 없습니다.");
		}catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회 실패");
		}
		return result;
	}
	
	//영화 데이터 목록 조회 - 개봉일순으로
	@Override
	public List<Movie> getMovieOpeningDate(Movie input) throws Exception {
		List<Movie> result = null;
		
		try {
			result = sqlSession.selectList("MovieMapper.selectOpeningDate", input);
			
			if(result == null) {
				throw new NullPointerException("result=null");
			}
		}catch(NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 영화 데이터가 없습니다.");
		}catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회 실패");
		}
		return result;
	}
	
	//영화 데이터 목록 조회 - 좋아요순으로
	@Override
	public List<Movie> getMovieLikeCount(Movie input) throws Exception {
		List<Movie> result = null;
		
		try {
			result = sqlSession.selectList("MovieMapper.selectLikeCount", input);
			
			if(result == null) {
				throw new NullPointerException("result=null");
			}
		}catch(NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 영화 데이터가 없습니다.");
		}catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회 실패");
		}
		return result;
	}
	
	//영화 데이터가 저장되어 있는 갯수 조회
	@Override
	public int getMovieCount(Movie input) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	
	//영화 데이터 저장하기
	@Override
	public int addMovie(Movie input) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	
	//영화데이터 수정하기
	@Override
	public int editMovie(Movie input) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	
	//영화 데이터 삭제하기
	@Override
	public int deleteMovie(Movie input) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
}
