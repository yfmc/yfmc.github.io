package study.spring.cinephile.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import study.spring.cinephile.model.MyPageQna;
import study.spring.cinephile.model.Qna;
import study.spring.cinephile.service.MyPageQnaService;

@Service
@Slf4j
public class MyPageQnaServiceImpl implements MyPageQnaService{

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public MyPageQna getMyPageQnaItem(MyPageQna input) throws Exception {
		MyPageQna result=null;
		
		try {
			result=sqlSession.selectOne("MyPageQnaMapper.selectItem",input);
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
	public List<MyPageQna> getMyPageQnaList(MyPageQna input) throws Exception {
		List<MyPageQna> result=null;
		
		try {
			result=sqlSession.selectList("MyPageQnaMapper.selectList",input);
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
	public int getMyPageQnaCount(MyPageQna input) throws Exception {
		int result=0;
		
		try {
			result=sqlSession.selectOne("MyPageQnaMapper.selectCountAll",input);
		}catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}

}
