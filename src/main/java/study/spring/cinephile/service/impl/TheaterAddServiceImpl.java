package study.spring.cinephile.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import study.spring.cinephile.model.TheaterAdd;
import study.spring.cinephile.service.TheaterAddService;

@Slf4j
@Service
public class TheaterAddServiceImpl implements TheaterAddService {

	/* MyBatis */
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int addTheater(TheaterAdd input) throws Exception {
		int result=0;
		
		try {
			result=sqlSession.insert("TheaterMapper.insertItem", input);
			
			if (result==0) {
				throw new NullPointerException("result=0");
			}
		}
		catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("저장된 데이터가 없습니다");
		}
		catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 저장에 실패했습니다");
		}
		
		return result;
	}

}
