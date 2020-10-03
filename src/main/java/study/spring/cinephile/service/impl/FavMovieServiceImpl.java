package study.spring.cinephile.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import study.spring.cinephile.model.FavMovie;
import study.spring.cinephile.service.FavMovieService;

@Service
@Slf4j
public class FavMovieServiceImpl implements FavMovieService{
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int putFavMovie(FavMovie input2) throws Exception {
		
		int result = 0;
		
		try {
			result = sqlSession.insert("MovieMapper.insertLike", input2);
			if(result == 0) {
				throw new NullPointerException("result==0");
			}
		}catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("저장된 데이터 없음");
		}catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 저장 실패");
		}
		
		return result;
	}

}
