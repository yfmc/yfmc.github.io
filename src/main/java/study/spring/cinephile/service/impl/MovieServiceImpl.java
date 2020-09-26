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
public class MovieServiceImpl implements MovieService {

	// myBatis
	@Autowired
	SqlSession sqlSession;

	// 영화 데이터 상세 조회
	@Override
	public Movie getMovieItem(Movie input) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	// 영화 데이터 목록 조회 - 예매순으로
	@Override
	public List<Movie> getMovieBooking(Movie input) throws Exception {
		List<Movie> result = null;

		try {
			result = sqlSession.selectList("MovieMapper.selectMovieBooking", input);

			if (result == null) {
				throw new NullPointerException("result=null");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 영화 데이터가 없습니다.1");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회 실패");
		}
		return result;
	}

	// 영화 데이터 목록 조회 - 평점순으로
	@Override
	public List<Movie> getMovieStarInfo(Movie input) throws Exception {
		List<Movie> result = null;

		try {
			result = sqlSession.selectList("MovieMapper.selectStarInfo", input);

			if (result == null) {
				throw new NullPointerException("result=null");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 영화 데이터가 없습니다.2");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회 실패");
		}
		return result;
	}

	// 영화 데이터 목록 조회 - 관람객순으로
	@Override
	public List<Movie> getMovieTodayAudience(Movie input) throws Exception {
		List<Movie> result = null;

		try {
			result = sqlSession.selectList("MovieMapper.selectTodayAudience", input);

			if (result == null) {
				throw new NullPointerException("rseult=null");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 영화 데이터가 없습니다.3");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회 실패");
		}
		return result;
	}

	// 영화 데이터 목록 조회 - 개봉일순으로
	@Override
	public List<Movie> getMovieOpeningDate(Movie input) throws Exception {
		List<Movie> result = null;

		try {
			result = sqlSession.selectList("MovieMapper.selectOpeningDate", input);

			if (result == null) {
				throw new NullPointerException("result=null");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 영화 데이터가 없습니다.4");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회 실패");
		}
		return result;
	}

	// 영화 데이터 목록 조회 - 좋아요순으로
	@Override
	public List<Movie> getMovieLikeCount(Movie input) throws Exception {
		List<Movie> result = null;

		try {
			result = sqlSession.selectList("MovieMapper.selectLikeCount", input);

			if (result == null) {
				throw new NullPointerException("result=null");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 영화 데이터가 없습니다.5");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회 실패");
		}
		return result;
	}

	// 영화 데이터가 저장되어 있는 갯수 조회 - 제목
	@Override
	public int getMovieCountTitle(Movie input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.selectOne("MovieMapper.selectCountAllTitle", input);
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회 실패");
		}
		return result;
	}
	
	// 영화 데이터가 저장되어 있는 갯수 조회 - 배우
	@Override
	public int getMovieCountActor(Movie input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.selectOne("MovieMapper.selectCountAllActor", input);
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회 실패");
		}
		return result;
	}
	
	// 영화 데이터가 저장되어 있는 갯수 조회 - 감독
	@Override
	public int getMovieCountDirector(Movie input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.selectOne("MovieMapper.selectCountAllDirector", input);
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회 실패");
		}
		return result;
	}
	
	// 영화 데이터가 저장되어 있는 갯수 조회 - 전체
	@Override
	public int getMovieCountOptionAll(Movie input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.selectOne("MovieMapper.selectCountAll", input);
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회 실패");
		}
		return result;
	}

	// 영화 데이터 저장하기
	@Override
	public int addMovie(Movie input) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	// 영화 검색 조회 - 제목
	@Override
	public List<Movie> getMovieSearchTitle(Movie input) throws Exception {
		List<Movie> result = null;

		try {
			result = sqlSession.selectList("MovieMapper.selectWhatMovieTitle", input);
			if (result == null) {
				throw new NullPointerException("result==null");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 영화 데이터가 없습니다.6");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회 실패");
		}

		return result;
	}
	// 영화 검색 조회 - 배우
	@Override
	public List<Movie> getMovieSearchActor(Movie input) throws Exception {
		List<Movie> result = null;

		try {
			result = sqlSession.selectList("MovieMapper.selectWhatMovieActor", input);
			if (result == null) {
				throw new NullPointerException("result==null");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 영화 데이터가 없습니다.7");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회 실패");
		}

		return result;
	}
	// 영화 검색 조회 - 감독
	@Override
	public List<Movie> getMovieSearchDirector(Movie input) throws Exception {
		List<Movie> result = null;

		try {
			result = sqlSession.selectList("MovieMapper.selectWhatMovieDirector", input);
			if (result == null) {
				throw new NullPointerException("result==null");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 영화 데이터가 없습니다.8");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회 실패");
		}

		return result;
	}
	// 영화 검색 조회 - 전체
	@Override
	public List<Movie> getMovieSearchOptionAll(Movie input) throws Exception {
		List<Movie> result = null;

		try {
			result = sqlSession.selectList("MovieMapper.selectWhatMovieOptionAll", input);
			if (result == null) {
				throw new NullPointerException("result==null");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 영화 데이터가 없습니다.6");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회 실패");
		}

		return result;
	}
}
