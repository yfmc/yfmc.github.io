package study.spring.cinephile.service.impl;

import java.util.List;

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
	
	/**
	 * 자주 가는 영화관 등록
	 * @param TheaterAdd input : 자주 가는 영화관 Beans
	 * @return int : 저장된 데이터 수
	 * @throws Exception
	 */
	@Override
	public int addTheater(TheaterAdd input) throws Exception {
		int result=0;
		
		/* 중복 방지 */
		if (countFavTheater(input)>0) {
			result=0;
			
			log.debug("이미 등록된 영화관 입니다");
			throw new Exception("이미 등록된 영화관 입니다");
		}
		else {
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
		}
		
		return result;
	}

	/**
	 * 자주 가는 영화관에 등록되어 있는지 확인
	 * @param TheaterAdd input : 자주 가는 영화관 Beans
	 * @return int : 등록되어있으면 1, 없으면 0
	 * @throws Exception
	 */
	@Override
	public int countFavTheater(TheaterAdd input) throws Exception {
		int result=0;
		
		try {
			result=sqlSession.selectOne("TheaterMapper.countFav", input);
		}
		catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다");
		}
		
		return result;
	}

	/**
	 * 로그인 한 회원의 자주 가는 영화관 목록 조회
	 * @param TheaterAdd input : 자주 가는 영화관 Beans
	 * @return 자주 가는 영화관 목록
	 * @throws Exception
	 */
	@Override
	public List<TheaterAdd> getFavTheaterList(TheaterAdd input) throws Exception {
		List<TheaterAdd> result=null;
		
		try {
			result=sqlSession.selectList("TheaterMapper.selectFavList", input);
			
			if (result==null) {
				throw new NullPointerException("result=null");
			}
		}
		catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터가 없습니다");
		}
		catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다");
		}
		
		return result;
	}

}
