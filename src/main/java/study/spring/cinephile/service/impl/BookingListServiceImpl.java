package study.spring.cinephile.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import study.spring.cinephile.model.BookingList;
import study.spring.cinephile.service.BookingListService;

@Service
@Slf4j
public class BookingListServiceImpl implements BookingListService {
	@Autowired
	SqlSession sqlSession;
	
	
	@Override
	public BookingList getBookingListItem(BookingList input) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookingList> getBookingListList(BookingList input) throws Exception {
		List<BookingList> result=null;
		
		try {
			result=sqlSession.selectList("BookingListMapper.selectList",input);
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
	public int getBookingListCount(BookingList input) throws Exception {
		int result=0;
		
		try {
			result=sqlSession.selectOne("BookingListMapper.selectCountAll",input);
		}catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		
		return result;
	}

	@Override
	public int addBookingList(BookingList input) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int editBookingList(BookingList input) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteBookingList(BookingList input) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

}
