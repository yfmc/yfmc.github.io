package study.spring.cinephile.scheduler;

import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import lombok.extern.slf4j.Slf4j;
import study.spring.cinephile.service.TcodesService;

@Slf4j
@Controller //<<-- 브라우저에 노출시키는 controller가 아니라 controllers패키지에 없어도 된다.
public class TcodeScheduler {
	
	@Autowired
	TcodesService tcodeService;
	
	/*
	 * 이메일을 보낸뒤 이 메서드를 실행한다.
	 * 이 메서드는 실행된 뒤 3분뒤에 파일을 지운다.
	 * delete문에서 where에 reg_date > 3분 이상 되었다면 지우게끔 처리한다.
	 * 
	 * delete를 수행한다.  
	 * */
	
	
	//인증코드를 발급 받고 3분뒤에 데이터 지우기
	public void delCodeAfterThreeMin() {
		
		try {
			tcodeService.deleteCode();
			log.debug("1초마다 발급된지 3분 지난 이메일 코드를 지웁니다.");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
