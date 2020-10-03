package study.spring.cinephile.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import study.spring.cinephile.model.MyPageBookingList;
import study.spring.cinephile.service.MyPageBookingListService;

@Service
@Slf4j
public class MyPageBookingListServiceImpl implements MyPageBookingListService{

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<MyPageBookingList> getMyPageBookingList(MyPageBookingList input) throws Exception {
		List<MyPageBookingList> result=null;
		
		try {
			result=sqlSession.selectList("MyPageBookingListMapper.selectList",input);
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
	public int getMyPageBookingListCount(MyPageBookingList input) throws Exception {
		int result=0;
		
		try {
			result=sqlSession.selectOne("MyPageBookingListMapper.selectCountAll",input);
		}catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}

	@Override
	public int deleteMyPageBookingList(MyPageBookingList input) throws Exception {
		int result=0;
		
		try {
			sqlSession.delete("MyPageBookingMapper.unsetMyPageBooking2",input);
			result=sqlSession.delete("MyPageBookingListMapper.deleteItem",input);
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
