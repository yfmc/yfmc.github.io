package study.spring.cinephile.service;

import java.util.List;

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
 
public class FaqServiceTest {
	
	/** Service 객체 주입 설정 */
	@Autowired
	private FaqService faqService;
	
	/** 단일행 조회 테스트 */
	@Test
	public void testA() {
		Faq input = new Faq();
		input.setFaq_id(7);
		
		Faq output = null;
		
		try { 
			output = faqService.getFaqItem(input);
			log.debug(output.toString());
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			e.printStackTrace();
		}
	}
	
	/** 다중행 조회 테스트 */
	@Test
	public void testB() {
		Faq input = new Faq();
		input.setFaq_title("faq");
		
		List<Faq> output = null;
		
		try { 
			output = faqService.getFaqList(input);
			
			for (Faq item : output) {
			log.debug(item.toString());
			}
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			e.printStackTrace();
		}
	}
	
	/** 전체 데이터 수 조회 */
	@Test
	public void testC() {
		int count = 0;
		
		try {
			count = faqService.getFaqCount(null);
			log.debug("전체 데이터 수: " + count);
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			e.printStackTrace();
		}
	}
	
	/** 조건에 따른 데이터 수 조회 */
	@Test
	public void testD() {
		int count = 0;
		
		Faq input = new Faq();
		input.setFaq_title("faq");
		
		try { 
			count = faqService.getFaqCount(input);
			log.debug("조건에 맞는 데이터 수 : " + count);
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			e.printStackTrace();
		}
	}
	
	/** 데이터 저장 테스트 */
	@Test
	public void testE() {
		Faq input =new Faq();
		input.setFaq_title("faq_new");
		input.setFaq_content("faq_faq");
		
		int output = 0;
		
		try {
			output = faqService.addFaq(input);
			log.debug("저장된 데이터 수: " + output);
			// [중요] 생성된 PK값은 MyBatis에 의해 입력 파라미터로 해당 멤버변수에 셋팅됨
			log.debug("생성된 PK값: " + input.getFaq_id());
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			e.printStackTrace();
		}
	}
	
	/** 데이터 수정 테스트 */
	@Test
	public void testF() {
		Faq input = new Faq();
		input.setFaq_id(10);
		input.setFaq_title("nono");
		input.setFaq_content("nonono");
		input.setReg_date("2020-09-11");
		
		int output = 0;
		
		try {
			output = faqService.editFaq(input);
			log.debug("수정된 데이터 수: " + output);
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			e.printStackTrace();
		}
	}
	
	/** 데이터 삭제 테스트 */
	@Test
	public void testG() {
		Faq input = new Faq();
		input.setFaq_id(9);
		
		int output = 0;
		
		try {
			output = faqService.deleteFaq(input);
			log.debug("삭제된 데이터 수: " + output);
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			e.printStackTrace();
		}
	}
}
