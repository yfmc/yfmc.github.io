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
import study.spring.cinephile.model.Members;
import study.spring.cinephile.service.MembersService;

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

public class punMemInfoTest {

	@Autowired
	MembersService membersService;
	
	@Autowired
	WebHelper webHelper;
	
	@Test
	public void TestA() {
		/* )데이터 조회하기 */
		//조회에 필요한 조건값(검색어)를 Beans에 담는다.
		Members input = new Members();
		input.setUser_id("caprio");
		input.setUser_pw("12qw12qw");
		input.setUser_name("디카프리오");
		input.setBirthdate("891024");
		input.setGender("M");
		input.setUser_email("caprio@gmail.com");
		input.setPhone("01056564545");
		input.setPostcode("12345");
		input.setAddr("뉴욕시 센트럴파크");
		input.setAddr_detail("엠파이어비링");
		input.setIs_out("N");

		
		Members output = null; // 조회결과가 저장될 객체
		
		try {
			//데이터 저장
			//--> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 Pk갑이 저장된다.
			membersService.addMembers(input);
			
			//데이터 조회
			output = membersService.getMembersItem(input);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		/* 3)JSON 출력하기 */
		Map<String, Object> data = new HashMap<String, Object>();
		
		data.put("item", output);
		
		log.debug("1111111111111111"+output.toString());
		
	}
}
