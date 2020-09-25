package study.spring.cinephile.controllers;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
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
	public Map<String, Object> login(Model model, HttpServletRequest request,
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
		
		//세션처리 
		HttpSession session = request.getSession();
		if(output != null) {
			
			session.setAttribute("loggedIn", output);
			//세션 유지시간 설정(초단위)
			//60 * 30 = 3분 !!일단 생략
			//session.setMaxInactiveInterval(1800);
		}else {
			session.removeAttribute("loggedIn");
		}
		
		return webHelper.getJsonData(data);
		
	}
	
	
	/**
	 * 아이디 찾기
	 * @param model
	 * @param user_name, user_email
	 * @return json Map<String, Object>는 자동으로 JSON으로 변환
	 */
	@RequestMapping(value="/login/findId.do", method = RequestMethod.POST)
	public Map<String, Object> findId(Model model, HttpServletRequest request,
			//검색어
			@RequestParam(value="user_name", required=false) String user_name,
			@RequestParam(value="user_email", required=false) String user_email){
		
		System.out.println(user_name);
		System.out.println(user_email);
		
		if(user_name == null) {return webHelper.getJsonWarning("아이디를 입력하세요.");}
		if(user_email == null) {return webHelper.getJsonWarning("비밀번호를 입력하세요.");}
		
		/* )데이터 조회하기 */
		//조회에 필요한 조건값(검색어)를 Beans에 담는다.
		Members input = new Members();
		input.setUser_name(user_name);
		input.setUser_email(user_email);
		
		Members output = null; // 조회결과가 저장될 객체
		
		try {
			//데이터 조회하기
			output = membersService.getFindId(input);
		
		}catch(Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		/* 3)JSON 출력하기 */
		Map<String, Object> data = new HashMap<String, Object>();
		

		data.put("item", output);
		System.out.println(data);

		return webHelper.getJsonData(data);
		
	}
	
	
	/* 아이디 칮기 완료페이지 */
	@RequestMapping(value="/login/03-successid.do", method = RequestMethod.GET)
	public ModelAndView view(Model model,
			@RequestParam(value="user_id", required=false) String user_id,
			@RequestParam(value="user_name", required=false) String user_name) {
		/* 1)유효성 검사 */
		//이 값이 존재하지 않는다면 데이터 조회가 불가능하므로 반드시 필수값으로 처리해야 한다.
		if(user_id == null) {
			return webHelper.redirect(null, "조회된 회원 데이터가 없습니다.");
		}
		
		/* 2)데이터 조회하기 */
		//데이터 조회에 필요한 조건값을 Beans에 저장하기
		Members input = new Members();
		input.setUser_id(user_id);
		input.setUser_name(user_name);
		
		
		/* 3)View 처리 */
		model.addAttribute("output", input);
		return new ModelAndView("login/03-successid");
	}


	/**
	 * 비번 찾기
	 * @param model
	 * @param user_name, user_email
	 * @return json Map<String, Object>는 자동으로 JSON으로 변환
	 */
	@RequestMapping(value="/login/findPw.do", method = RequestMethod.POST)
	public Map<String, Object> findId(Model model, HttpServletRequest request,
			//검색어
			@RequestParam(value="user_name", required=false) String user_name,
			@RequestParam(value="user_id", required=false) String user_id,
			@RequestParam(value="user_email", required=false) String user_email){
		
		System.out.println(user_name);
		System.out.println(user_email);
		
		if(user_name == null) {return webHelper.getJsonWarning("이름을 입력하세요.");}		
		if(user_id == null) {return webHelper.getJsonWarning("아이디를 입력하세요.");}
		if(user_email == null) {return webHelper.getJsonWarning("비밀번호를 입력하세요.");}
		
		/* )데이터 조회하기 */
		//조회에 필요한 조건값(검색어)를 Beans에 담는다.
		Members input = new Members();
		input.setUser_name(user_name);
		input.setUser_id(user_id);
		input.setUser_email(user_email);
		
		Members output = null; // 조회결과가 저장될 객체
		
		try {
			//데이터 조회하기
			output = membersService.getFindPw(input);
		
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
