package study.spring.cinephile.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import study.spring.cinephile.model.PasswordOk;
import study.spring.cinephile.service.PasswordOkService;

@Slf4j
@Service
public class PasswordOkServiceImpl implements PasswordOkService{

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int getPasswordOkCount(PasswordOk input) throws Exception {
		int result=0;
		
		try {
			result=sqlSession.selectOne("PasswordOkMapper.selectCountAll",input);
		}catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		
		return result;
	}

}
