package study.spring.cinephile;

import java.util.HashMap;
import java.util.Map;

import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import lombok.extern.slf4j.Slf4j;
import study.spring.cinephile.helper.WebHelper;
import study.spring.cinephile.model.Tcodes;
import study.spring.cinephile.service.TcodesService;

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
public class CodeTest {
	@Autowired
	TcodesService tcodesService;
	
	@Autowired
	WebHelper webHelper;
	
	//데이터 입력하기
	@Test
	public void TestA() {
		Tcodes input = new Tcodes();
		input.setUser_email("newjhj31@gmail.com");
		input.setCode("123456");
		
		Tcodes output = null; 
		
		try {
			//데이터 저장
			tcodesService.addCode(input);
			
			//데이터 조회
			output = tcodesService.getCode(input);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
Map<String, Object> data = new HashMap<String, Object>();
		
		data.put("item", output);
		
		log.debug("1111111111111111"+output.toString());
	}
}
