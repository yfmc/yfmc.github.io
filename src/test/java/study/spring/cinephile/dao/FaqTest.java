package study.spring.cinephile.dao;

import org.apache.ibatis.session.SqlSession;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import lombok.extern.slf4j.Slf4j;
import study.spring.cinephile.model.Faq;

/** Lobbok의 Log4j 객체 */
@Slf4j

/** JUnit에 의한 테스트 클래스로 정의 */
@RunWith(SpringJUnit4ClassRunner.class)

/** Spring의 설정 파일들을 읽어들어도록 설정(**의 `모든`이라는 의미) */
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/*-context.xml"})	

/** 웹 어플리케이션임을 명시 */
 @WebAppConfiguration
 
 /** 메서드 이름순서로 실행하도록 설정 (설정하지 않을경우 무작위 순서로 실행) */
 @FixMethodOrder(MethodSorters.NAME_ASCENDING)
 
public class FaqTest {
	
	/** MyBatis의 SQL세션 주입 설정 */
	@Autowired
	private SqlSession sqlSession;
	
	/** 단일행 조회 테스트 */
	@Test
	public void testA()	{
		Faq input = new Faq();
		input.setFaq_id(1);
		sqlSession.selectOne("FaqMapper.selectItem", input);
	}
	
	/** 다중행 조회 테스트 */
	@Test
	public void testB() {
		Faq input = new Faq();
		input.setFaq_title("faq");
		sqlSession.selectList("FaqMapper.selectList", input);
	}
	
	/** 데이터 저장 테스트 */
	@Test
	public void testC() {
		Faq input = new Faq();
		input.setFaq_title("faq_2");
		input.setFaq_content("faqfaq");
		sqlSession.insert("FaqMapper.insertItem", input);
	}
	
	/** 데이터 삭제 테스트 */
	@Test
	public void testD() {
		Faq input = new Faq();
		input.setFaq_id(2);
		sqlSession.delete("FaqMapper.deleteItem", input);
	}
	
	/** 데이터 수정 테스트 */
	@Test
	public void testE() {
		Faq input = new Faq();
		input.setFaq_id(3);
		input.setFaq_title("question");
		input.setFaq_content("cinephile");
		input.setReg_date("2020-09-11");
		sqlSession.update("FaqMapper.updateItem", input);
	}
	
	/** 전체 데이터 수 조회 */
	@Test
	public void testF() {
		int count = sqlSession.selectOne("FaqMapper.selectCountAll", null);
		log.debug("전체 데이터 수 : " + count);
	}
	
	/** 조건에 따른 데이터 수 조회 */
	@Test
	public void testG() {
		Faq input = new Faq();
		input.setFaq_title("question");
		int count = sqlSession.selectOne("FaqMapper.selectCountAll", input);
		log.debug("조건에 맞는 데이터 수 : " + count);
	}
}
