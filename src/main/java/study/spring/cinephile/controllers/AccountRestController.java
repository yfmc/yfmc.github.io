package study.spring.cinephile.controllers;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import study.spring.cinephile.helper.RegexHelper;
import study.spring.cinephile.helper.WebHelper;
import study.spring.cinephile.model.Members;
import study.spring.cinephile.service.MembersService;

@RestController
public class AccountRestController {
	
	@Autowired
	WebHelper webHelper;
	
	@Autowired
	RegexHelper regexHelper;
	
	@Autowired
	MembersService membersService;
	
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	/**
	 * 이메일 입력시 중복확인
	 * @param model
	 * @param user_email
	 * @return json Map<String, Object>는 자동으로 JSON으로 변환
	 */
	@RequestMapping(value="/Emaila_ok.do", method = {RequestMethod.POST})
	public Map<String, Object> get_email(
			//검색어
			@RequestParam(value="user_email", required=false) String user_email){
		System.out.println("accountrestcontroller 실행");
		if(user_email == null) {return webHelper.getJsonWarning("이메일을 입력하세요.");}
		if(!regexHelper.isEmail(user_email)) {return webHelper.getJsonWarning("이메일 형식이 아닙니다.");}
	
		/* )데이터 조회하기 */
		//조회에 필요한 조건값(검색어)를 Beans에 담는다.
		Members input = new Members();
		input.setUser_email(user_email);

		Members output = null; // 조회결과가 저장될 객체
		
		try {
			//데이터 조회하기
			output = membersService.getMembersEmail(input);
			
		}catch(Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		/* 3)JSON 출력하기 */
		Map<String, Object> data = new HashMap<String, Object>();
		
		data.put("item", output);
		System.out.println(data);
		return webHelper.getJsonData(data);
		
	}
	
	
	/**
	 * 아이디 입력시 중복확인
	 * @param model
	 * @param user_email
	 * @return json Map<String, Object>는 자동으로 JSON으로 변환
	 */
	@RequestMapping(value="/userid_cheik.do", method = {RequestMethod.POST})
	public Map<String, Object> get_userid(
			//검색어
			@RequestParam(value="user_id", required=false) String user_id){
		
		System.out.println("accountrestcontroller 실행");
		if(user_id == null) {return webHelper.getJsonWarning("아이디를 입력하세요");}
		if(!regexHelper.isEngNum(user_id)) {return webHelper.getJsonWarning("아이디는 영어,숫자만 입력 가능합니다.");}
	
		/* )데이터 조회하기 */
		//조회에 필요한 조건값(검색어)를 Beans에 담는다.
		Members input = new Members();
		input.setUser_id(user_id);

		Members output = null; // 조회결과가 저장될 객체
		
		try {
			//데이터 조회하기
			output = membersService.getMembersIdcheck(input);
			
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
