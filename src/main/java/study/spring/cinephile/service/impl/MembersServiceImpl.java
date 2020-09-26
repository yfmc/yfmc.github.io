package study.spring.cinephile.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import study.spring.cinephile.model.Members;
import study.spring.cinephile.service.MembersService;

@Service
@Slf4j
public class MembersServiceImpl implements MembersService{

	/* MyBatis */
	// --> import org.apache.ibatis.session.SqlSession
	@Autowired
	SqlSession sqlSession;
	
	
	@Override
	public Members getFindPw(Members input) throws Exception {
		Members result = null;
		
		try {
			result = sqlSession.selectOne("MembersMapper.selectFindPw", input);
			
			}catch(Exception e) {
				log.error(e.getLocalizedMessage());
				throw new Exception("데이터 조회에 실패했습니다.");
			}
		
		return result;
	}
	
	/**
	 * 아이디 찾기
	 * @param Members 조회할 회원의 이름,이메일을 담고 있는 Beans
	 * @return 조회된 데이터가 저장된 Beans
	 * @throws Exception
	 */
	@Override
	public Members getFindId(Members input) throws Exception {
		Members result = null;
		
		try {
			result = sqlSession.selectOne("MembersMapper.selectFindId", input);
			
			}catch(Exception e) {
				log.error(e.getLocalizedMessage());
				throw new Exception("데이터 조회에 실패했습니다.");
			}
		
		return result;
	}
	
	/**
	 * 로그인 처리
	 * @param Members 조회할 회원의 이메일을 담고 있는 Beans
	 * @return 조회된 데이터가 저장된 Beans
	 * @throws Exception
	 */
	@Override
	public Members getMembersIdcheck(Members input) throws Exception {
		Members result = null;
		
		try {
			result = sqlSession.selectOne("MembersMapper.selectUserid", input);
			
			}catch(Exception e) {
				log.error(e.getLocalizedMessage());
				throw new Exception("데이터 조회에 실패했습니다.");
			}
		return result;
	}
	
	/**
	 * 로그인 처리
	 * @param Members 조회할 회원의 이메일을 담고 있는 Beans
	 * @return 조회된 데이터가 저장된 Beans
	 * @throws Exception
	 */
	@Override
	public Members getMembersLogin(Members input) throws Exception {
		Members result = null;	
		
		try {
			result = sqlSession.selectOne("MembersMapper.selectLogin", input);
			
			if(result == null) {
				throw new NullPointerException("result=null");
				}
			}catch(NullPointerException e) {
				log.error(e.getLocalizedMessage());
				throw new Exception("아이디와 비밀번호가 일치하지 않습니다.");
			}catch(Exception e) {
				log.error(e.getLocalizedMessage());
				throw new Exception("데이터 조회에 실패했습니다.");
			}
		
		return result;
	}
	
	/**
	 * 사용가능 이메일 조회
	 * @param Members 조회할 회원의 이메일을 담고 있는 Beans
	 * @return 조회된 데이터가 저장된 Beans
	 * @throws Exception
	 */
	@Override
	public Members getMembersEmail(Members input) throws Exception {
		Members result= null;
		
		try {
		result = sqlSession.selectOne("MembersMapper.selectEmail", input);
		
		}catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}
	
	/**
	 * 회원데이터 상세조회
	 * @param Members 조회할 회원의 일련번호를 담고 있는 Beans
	 * @return 조회된 데이터가 저장된 Beans
	 * @throws Exception
	 */
	@Override
	public Members getMembersItem(Members input) throws Exception {
		Members result = null;
		
		try {
			result = sqlSession.selectOne("MembersMapper.selectItem", input);
			
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
	 * 회원 데이터 목록 조회
	 * @return 조회 결과에 대한 컬렉션
	 * @throws Exception 
	 */
	@Override
	public List<Members> getMembersList(Members input) throws Exception {
		List<Members> result = null;
		
		try {
			result = sqlSession.selectList("MembersMapper.selectList", input);
			
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
	 * 회원 데이터가 저장되어 있는 갯수 조회
	 * @return int
	 * @throws Exception
	 */
	@Override
	public int getMembersCount(Members input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.selectOne("MembersMapper.selectCountAll", input);
		}catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}

	/**
	 * 회원데이터 등록하기
	 * @param Members 저장할 정보를 담고 있는 Beans
	 * @throws Exception
	 */
	@Override
	public int addMembers(Members input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.insert("MembersMapper.insertItem", input);
			
			if(result == 0) {
				throw new NullPointerException("result=0");
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
	 * 회원 데이터 수정하기
	 * @param Members 수정할 정보를 담고있는 Beans
	 * @throws Exception
	 */
	@Override
	public int editMembers(Members input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.update("MembersMapper.updateItem", input);
			
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
	/**
	 * 회원 데이터 삭제하기
	 * @param Members 삭제할 회원의 일련번호를 담고 있는 Beans
	 * @throws Exception
	 */
	@Override
	public int deleteMembers(Members input) throws Exception {
		int result = 0;
		
		try {
			//회원 삭제 전 자신을 참조하는 학생들의 profno칼럼을 null로 수정
			sqlSession.update("StudentMapper.unsetMembers", input);
			
			result = sqlSession.delete("MembersMapper.deleteItem", input);
			
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
	
	
	/**
	 * 회원 비번 업댓
	 * @param Members 새로운 비번, 회원 이메일
	 * @throws Exception
	 */
	@Override
	public int newPw(Members input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.update("MembersMapper.updateNewPw", input);
			
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

	

	

	

	

	


}
