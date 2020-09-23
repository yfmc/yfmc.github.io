package study.spring.cinephile.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import study.spring.cinephile.model.Tcodes;
import study.spring.cinephile.service.TcodesService;

@Service
@Slf4j
public class TcodesServiceImpl implements TcodesService {
	
	/* MyBatis */
	// --> import org.apache.ibatis.session.SqlSession
	@Autowired
	SqlSession sqlSession;
	
	/**
	 * 인증코드 상세조회
	 * @param Tcodes 조회할 회원의 일련번호를 담고 있는 Beans
	 * @return 조회된 데이터가 저장된 Beans
	 * @throws Exception
	 */
	@Override
	public Tcodes getCode(Tcodes input) throws Exception {
		Tcodes result = null;
		
		try {
			result = sqlSession.selectOne("TcodesMapper.selectCode", input);
			if(result == null) {
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
	
	/**
	 * 인증코드 등록하기
	 * @param Tcodes 저장할 정보를 담고 있는 Beans
	 * @return int
	 * @throws Exception
	 */
	@Override
	public int addCode(Tcodes input) throws Exception {
		int result = 0;
		try {
			result = sqlSession.insert("TcodesMapper.insertCode", input);
			if(result == 0) {
				throw new NullPointerException("result=null");
				}
			}catch(NullPointerException e) {
				log.error(e.getLocalizedMessage());
				throw new Exception("저장된 데이터가 없습니다.");
			}catch(Exception e) {
				log.error(e.getLocalizedMessage());
				throw new Exception("데이터 저장에 실패했습니다.");
			}
		return result;
	}
	
	/**
	 * 유효시간 지난 데이터 삭제하기
	 * @param Tcodes 삭제할 회원의 일련번호를 담고 있는 Beans
	 * @return int
	 * @throws Exception
	 */
	@Override
	public int deleteCode() throws Exception {
		int result = 0;
		try {
			//회원 삭제 전 자신을 참조하는 학생들의 profno칼럼을 null로 수정
			result = sqlSession.update("TcodesMapper.deleteCode");
			
			if(result == 0) {
				throw new NullPointerException("result=0");
			}
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
