package study.spring.cinephile.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import study.spring.cinephile.model.Theater2;
import study.spring.cinephile.service.Theater2Service;

@Service
@Slf4j
public class Theater2ServiceImpl implements Theater2Service {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public Theater2 getTheater2Item(Theater2 input) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Theater2> getTheater2List(Theater2 input) throws Exception {
		List<Theater2> result=null;
		
		try {
		result=sqlSession.selectList("Theater2Mapper.selectList",input);
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
	public int getTheater2Count(Theater2 input) throws Exception {
		int result=0;
		
		return result;
	}

}
