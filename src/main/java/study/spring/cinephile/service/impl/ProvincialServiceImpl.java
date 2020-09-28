package study.spring.cinephile.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import study.spring.cinephile.model.Provincial;
import study.spring.cinephile.service.ProvincialService;

@Slf4j
@Service
public class ProvincialServiceImpl implements ProvincialService {
	
	/** MyBatis 세션 객체 주입 설정 */
	@Autowired
	SqlSession sqlSession;
	
	/**
     * Provincial 데이터 상세 조회 (datetime 타입)
     * @param  Provincial 조회할 Provincial의 일련번호를 담고 있는 Beans
     * @return  조회된 데이터가 저장된 Beans
     * @throws  Exception
     */
	@Override
	public Provincial getProvincialItem(Provincial input) throws Exception {
		Provincial result = null;
			
		try {
			result = sqlSession.selectOne("ProvincialMapper.selectItem", input);
			
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
     * Provincial 데이터 목록 조회 
     * @param   input   검색 조건을 담고 있는 Beans
     * @return  조회 결과에 대한 컬렉션
     * @throws  Exception
     */
	@Override
	public List<Provincial> getProvincialList(Provincial input) throws Exception {
		List<Provincial> result = null;
		
		try {
			result = sqlSession.selectList("ProvincialMapper.selectList", input);
			
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
     * Provincial 데이터가 저장되어 있는 갯수 조회
     * @param   input   검색 조건을 담고 있는 Beans
     * @return  저장되어 있는 데이터 수
     * @throws  Exception
     */
	@Override
	public int getProvincialCount(Provincial input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.selectOne("ProvincialMapper.selectCountAll", input);
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회 실패");
		}
		
		return result;
	}

	/**
     * Provincial 데이터 등록하기
     * @param   input   저장할 데이터들을 담고 있는 Beans
     * @return  저장된 데이터 수
     * @throws  Exception
     */
	@Override
	public int addProvincial(Provincial input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.insert("ProvincialMapper.insertItem", input);
			
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
     * Provincial 데이터 수정하기
     * @param   input   수정할 데이터들을 담고 있는 Beans
     * @return  수정된 데이터 수
     * @throws  Exception
     */
	@Override
	public int editProvincial(Provincial input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.update("ProvincialMapper.updateItem", input);
			
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
     * Provincial 데이터 삭제하기
     * @param   input   삭제할 데이터의 조건값을 담고 있는 Beans
     * @return  삭제된 데이터 수
     * @throws  Exception
     */
	@Override
	public int deleteProvincial(Provincial input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.delete("ProvincialMapper.deleteItem", input);
			
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

}
