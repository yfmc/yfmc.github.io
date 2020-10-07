package study.spring.cinephile.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import study.spring.cinephile.helper.WebHelper;
import study.spring.cinephile.model.TheaterAdd;
import study.spring.cinephile.service.TheaterAddService;

@RestController
public class BookingRestContoller {
	/* WebHelper 주입 */
	@Autowired
	WebHelper webHelper;
	
	/* Service 패턴 구현체 주입 */
	@Autowired
	TheaterAddService favTheaterService;
	
	/* 로그인 한 회원에 대한 자주 가는 영화관 목록 조회 */
	@RequestMapping(value="/favtheaterlistjson", method=RequestMethod.GET)
	public Map<String, Object> favTheater_list(@RequestParam(value="membersId", defaultValue="0") int membersId) {
		
		/* 1) 데이터 조회하기 */
		// 조회에 필요한 조건값(검색어)을 Beans에 담는다
		TheaterAdd input=new TheaterAdd();
		input.setMembersId(membersId);
		
		// 조회된 자주 가는 영화관 목록이 저장될 객체
		List<TheaterAdd> output=null;
		
		try {
			// 데이터 조회하기
			output=favTheaterService.getFavTheaterList(input);
		}
		catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		
		/* 2) JSON 출력하기 */
		Map<String, Object> data=new HashMap<String, Object>();
		data.put("membersId", membersId);
		data.put("favTheaterList", output);
		
		return webHelper.getJsonData(data);
		
	}
}
