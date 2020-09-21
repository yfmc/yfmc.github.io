package study.spring.cinephile.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import study.spring.cinephile.model.Theater;
import study.spring.cinephile.service.TheaterService;

@Slf4j
@Service
public class TheaterServiceImpl implements TheaterService {

	/* MyBatis 세션 객체 주입 */
	@Autowired
	SqlSession sqlSession;
	
	/**
	 * 극장 상세정보 조회
	 * @param Theater input : 극장 Beans
	 * @return 조회된 극장 상세정보 Beans
	 * @throws Exception
	 */
	@Override
	public Theater getTheaterItem(Theater input) throws Exception {
		Theater result=null;
		
		try {
			result=sqlSession.selectOne("TheaterMapper.selectItem", input);
			
			if (result==null) {
				throw new NullPointerException("result=null");
			}
		}
		catch (NullPointerException e) {
            log.error(e.getLocalizedMessage());
            throw new Exception("조회된 데이터가 없습니다.");
        }
		catch (Exception e) {
            log.error(e.getLocalizedMessage());
            throw new Exception("데이터 조회에 실패했습니다.");
        }
		
		return result;
	}

}
