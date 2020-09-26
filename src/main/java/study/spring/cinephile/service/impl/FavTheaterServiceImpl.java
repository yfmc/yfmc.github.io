package study.spring.cinephile.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import study.spring.cinephile.model.FavTheater;
import study.spring.cinephile.service.FavTheaterService;

@Service
@Slf4j
public class FavTheaterServiceImpl implements FavTheaterService{

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public FavTheater getFavTheaterItem(FavTheater input) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<FavTheater> getFavTheaterList(FavTheater input) throws Exception {
		List<FavTheater> result=null;
		
		try {
			result=sqlSession.selectList("FavTheaterMapper.selectList",input);
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
	public int getFavTheaterCount(FavTheater input) throws Exception {
		int result=0;
		
		try {
			result=sqlSession.selectOne("FavTheaterMapper.selectCount",input);
		}catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}

	@Override
	public int addFavTheater(FavTheater input) throws Exception {
		int result=0;
		
		try {
			result=sqlSession.insert("FavTheaterMapper.insertItem",input);
			if(result==0) {
				throw new NullPointerException("result=0");
			}
		}catch(NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("저장된 데이터가 없습니다.");
		}catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 저장에 실패했습니다.");
		}
		
		
		return result;
	}

	@Override
	public int editFavTheater(FavTheater input) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteFavTheater(FavTheater input) throws Exception {
		int result=0;
		
		try {
			result=sqlSession.delete("FavTheaterMapper.deleteItem",input);
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
