package study.spring.cinephile;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import lombok.extern.slf4j.Slf4j;
import study.spring.cinephile.model.Theater;
import study.spring.cinephile.model.TheaterAdd;
import study.spring.cinephile.service.TheaterAddService;
import study.spring.cinephile.service.TheaterService;

@Slf4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*-context.xml" })
@WebAppConfiguration
public class TheaterTest {
	@Autowired
	private TheaterService theaterService;
	
	@Autowired
	private TheaterAddService addService;
	
	/* 극장 상세정보 조회 테스트 */
	@Test
	public void testA() {
		Theater input=new Theater();
		input.setTheaterId(7001);
		
		Theater output=null;
		
		try {
			output=theaterService.getTheaterItem(input);
			log.debug(output.toString());
		}
		catch (Exception e) {
			log.error(e.getLocalizedMessage());
			e.printStackTrace();
		}
	}
	
	/* 자주 가는 영화관 등록 테스트 + 중복 테스트 */
	@Test
	public void testB() {
		TheaterAdd input=new TheaterAdd();
		input.setTheaterId(7001);
		input.setMembersId(1);
		
		int output=0;
		
		try {
			output=addService.addTheater(input);
			log.debug("저장된 데이터 수 : "+output);
			log.debug("생성된 Primary Key : "+input.getFavTheaterId());
		}
		catch (Exception e) {
			log.error(e.getLocalizedMessage());
			e.printStackTrace();
		}
	}
}
