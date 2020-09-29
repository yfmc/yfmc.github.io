package study.spring.cinephile.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import study.spring.cinephile.model.Members;
import study.spring.cinephile.service.MyPageMembersService;

@Service
@Slf4j
public class MyPageMembersServiceImpl implements MyPageMembersService{
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int editMyPageMembers(Members input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.update("MyPageMembersMapper.updateItem", input);
			
			if(result == 0) {
				throw new NullPointerException("result=0");
			}
		}catch(NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("수정된 데이터가 없습니다.");
		}catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 수정에 실패했습니다.");
		}
		return result;
	}

	@Override
	public int deleteMyPageMembers(Members input) throws Exception {
		int result=0;
		
		try {
			
			sqlSession.update("MyPageBookingNoMapper.unsetforMyPageBookingNo",input);
			sqlSession.update("MyPageQnaMapper.unsetforMyPageQna",input);
			sqlSession.update("ChoiceMovieMapper.unsetforMyPageChoiceMovie",input);
			sqlSession.update("FavTheaterMapper.unsetforFavTheater",input);
			sqlSession.update("MyPageStarCommentMapper.unsetforMyPageStarComment",input);
			
			result=sqlSession.delete("MyPageMembersMapper.deleteItem",input);
		}catch(NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("삭제된 데이터가 없습니다.");
		}catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 삭제에 실패했습니다.");
		}
		return result;
	}

	//이메일 중복검사를 위한 count메서드
	@Override
	public int getMyPageMembersCount(Members input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.selectOne("MyPageMembersMapper.selectCountAll", input);
		}catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}


	
	

}
