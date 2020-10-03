package study.spring.cinephile.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import study.spring.cinephile.model.ChoiceMovie;
import study.spring.cinephile.service.ChoiceMovieService;

@Service
@Slf4j
public class ChoiceMovieServiceImpl implements ChoiceMovieService{

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<ChoiceMovie> getChoiceMovieList(ChoiceMovie input) throws Exception {
		List<ChoiceMovie> result=null;
		
		try {
			result=sqlSession.selectList("ChoiceMovieMapper.selectList",input);
			if(result==null) {
				throw new NullPointerException("result=null");
			}
		}catch(NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터가 없습니다.");
		}catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}

	@Override
	public int getChoiceMovieCount(ChoiceMovie input) throws Exception {
		int result=0;
		
		try {
			result=sqlSession.selectOne("ChoiceMovieMapper.selectCountAll",input);
		}catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}

	@Override
	public int deleteChoiceMovie(ChoiceMovie input) throws Exception {
		int result=0;
		
		try {
			result=sqlSession.delete("ChoiceMovieMapper.deleteItem",input);
			if(result==0) {
				throw new NullPointerException("result=0");
			}
		}catch(NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("삭제된 데이터가 없습니다.");
		}catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 삭제에 실패했습니다.");
		}
		return result;
	}

}
