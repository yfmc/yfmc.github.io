package study.spring.cinephile.controllers;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import study.spring.cinephile.helper.RegexHelper;
import study.spring.cinephile.helper.WebHelper;
import study.spring.cinephile.model.Members;
import study.spring.cinephile.service.MembersService;

@RestController
public class LoginRestController {
	
	@Autowired
	WebHelper webHelper;
	
	@Autowired
	RegexHelper regexHelper;
	
	@Autowired
	MembersService membersService;
	
	/**
	 * 이메일 입력시 중복확인
	 * @param model
	 * @param user_email
	 * @return json Map<String, Object>는 자동으로 JSON으로 변환
	 */
	@RequestMapping(value="/login/login_ok.do", method = RequestMethod.POST)
	public Map<String, Object> login(Model model,
			//검색어
			@RequestParam(value="user_id", required=false) String user_id,
			@RequestParam(value="user_pw", required=false) String user_pw){
		
		
		if(user_id == null) {return webHelper.getJsonWarning("아이디를 입력하세요.");}
		if(user_pw == null) {return webHelper.getJsonWarning("비밀번호를 입력하세요.");}
		
	
		/* )데이터 조회하기 */
		//조회에 필요한 조건값(검색어)를 Beans에 담는다.
		Members input = new Members();
		input.setUser_id(user_id);
		input.setUser_pw(user_pw);
		
		Members output = null; // 조회결과가 저장될 객체
		
		try {
			//데이터 조회하기
			output = membersService.getMembersLogin(input);
			
		}catch(Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		/* 3)JSON 출력하기 */
		Map<String, Object> data = new HashMap<String, Object>();
		
		data.put("item", output);
		System.out.println(data);
		return webHelper.getJsonData(data);
		
	}
	
	
}
