package study.spring.cinephile.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import study.spring.cinephile.model.Notice;
import study.spring.cinephile.service.NoticeService;

@Slf4j
@Service
public class NoticeServiceImpl implements NoticeService {
	
	/** MyBatis 세션 객체 주입 설정 */
	@Autowired
	SqlSession sqlSession;
	
	@Autowired
	NoticeService noticeService;
	
	/**
     * Notice 데이터 상세 조회 (datetime 타입)
     * @param  Notice 조회할 Notice의 일련번호를 담고 있는 Beans
     * @return  조회된 데이터가 저장된 Beans
     * @throws  Exception
     */
	@Override
	public Notice getNoticeItem(Notice input) throws Exception {
		Notice result = null;
		
		try {
			result = sqlSession.selectOne("NoticeMapper.selectItem", input);
			
			if (result == null) {
				throw new NullPointerException("result=null");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터 없음");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회 실패");
		}
		
		return result;
	}
	
	/**
     * Notice 데이터 상세 조회 (date 타입)
     * @param  Notice 조회할 Notice의 일련번호를 담고 있는 Beans
     * @return  조회된 데이터가 저장된 Beans
     * @throws  Exception
     */
	@Override
	public Notice getNoticeItem_date(Notice input) throws Exception {
		Notice result = null;
			
		try {
			result = sqlSession.selectOne("NoticeMapper.selectItem_date", input);
			
			if (result == null) {
				throw new NullPointerException("result=null");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터 없음");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회 실패");
		}
		
		return result;
	}
	
	/**
     * Notice 데이터 상세 조회 (다음글 조회)
     * @param  Notice 조회할 Notice의 일련번호를 담고 있는 Beans
     * @return  조회된 데이터가 저장된 Beans
     * @throws  Exception
     */
	@Override
	public Notice getNoticeItem_next(Notice input) throws Exception {
		Notice result = null;

		result = sqlSession.selectOne("NoticeMapper.selectItem_next", input);

		return result;
	}
	
	/**
     * Notice 데이터 상세 조회 (이전글 조회)
     * @param  Notice 조회할 Notice의 일련번호를 담고 있는 Beans
     * @return  조회된 데이터가 저장된 Beans
     * @throws  Exception
     */
	@Override
	public Notice getNoticeItem_prev(Notice input) throws Exception {
		Notice result = null;
		
		result = sqlSession.selectOne("NoticeMapper.selectItem_prev", input);
		
		return result;
	}
	
	/**
     * Notice 데이터 목록 조회(datetime 타입)
     * @param   input   검색 조건을 담고 있는 Beans
     * @return  조회 결과에 대한 컬렉션
     * @throws  Exception
     */
	@Override
	public List<Notice> getNoticeList(Notice input) throws Exception {
		List<Notice> result = null;
		
		try {
			result = sqlSession.selectList("NoticeMapper.selectList", input);
			
			if (result == null) {
				throw new NullPointerException("result=null");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터 없음");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회 실패");
		}
		
		return result;
	}
	
	/**
     * Notice 데이터 목록 조회(date 타입)
     * @param   input   검색 조건을 담고 있는 Beans
     * @return  조회 결과에 대한 컬렉션
     * @throws  Exception
     */
	@Override
	public List<Notice> getNoticeList_date(Notice input) throws Exception {
		List<Notice> result = null;
		
		try {
			result = sqlSession.selectList("NoticeMapper.selectList_date", input);
			
			if (result == null) {
				throw new NullPointerException("result=null");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터 없음");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회 실패");
		}
		
		return result;
	}
	
	/**
     * Notice 데이터가 저장되어 있는 갯수 조회
     * @param   input   검색 조건을 담고 있는 Beans
     * @return  저장되어 있는 데이터 수
     * @throws  Exception
     */
	@Override
	public int getNoticeCount(Notice input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.selectOne("NoticeMapper.selectCountAll", input);
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회 실패");
		}
		
		return result;
	}

	/**
     * Notice 데이터 등록하기
     * @param   input   저장할 데이터들을 담고 있는 Beans
     * @return  저장된 데이터 수
     * @throws  Exception
     */
	@Override
	public int addNotice(Notice input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.insert("NoticeMapper.insertItem", input);
			
			if (result == 0) {
				throw new NullPointerException("result=0");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("저장된 데이터 없음");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 저장 실패");
		}
		
		return result;
	}
	
	/**
     * Notice 데이터 수정하기
     * @param   input   수정할 데이터들을 담고 있는 Beans
     * @return  수정된 데이터 수
     * @throws  Exception
     */
	@Override
	public int editNotice(Notice input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.update("NoticeMapper.updateItem", input);
			
			if (result == 0) {
				throw new NullPointerException("result=0");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("수정된 데이터 없음");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 수정 실패");
		}
		
		return result;
	}
	
	/**
     * Notice 데이터 삭제하기
     * @param   input   삭제할 데이터의 조건값을 담고 있는 Beans
     * @return  삭제된 데이터 수
     * @throws  Exception
     */
	@Override
	public int deleteNotice(Notice input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.delete("NoticeMapper.deleteItem", input);
			
			if (result == 0) {
				throw new NullPointerException("result=0");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("삭제된 데이터 없음");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 삭제 실패");
		}
		
		return result;
	}
	
	/**
     * 공지사항 조회수
     * @param input
     * @return 공지사항 조회수
     * @throws Exception
     */
	@Override
	public int viewsUp(Notice input) throws Exception {
		
		int result = input.getViews();
		
		sqlSession.update("NoticeMapper.viewsUp", input);
		
		return result;
	}

}
