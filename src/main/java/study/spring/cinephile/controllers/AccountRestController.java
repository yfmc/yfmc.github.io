package study.spring.cinephile.controllers;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

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
import study.spring.cinephile.model.Tcodes;
import study.spring.cinephile.service.MembersService;
import study.spring.cinephile.service.TcodesService;

@RestController
public class AccountRestController {
	
	@Autowired
	WebHelper webHelper;
	
	@Autowired
	RegexHelper regexHelper;
	
	@Autowired
	MembersService membersService;
	
	@Autowired
	TcodesService tcodesService;
	
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
	
	/* 인증번호 처리 */
	@RequestMapping(value="/account/03-emailCode_oks")
	public Map<String, Object> checkCode(Model model, HttpServletRequest request,
			@RequestParam(value="code_check", required=false) String code_check) {
		
		System.out.println(code_check);
		//쿠키값을 저장할 문자열
		String getPk = null;
		
		//저장된 쿠키를 가져온다.
		Cookie[] cookies = request.getCookies();
		
		String value = null;
		//쿠키 목록이 있다면
		if(cookies != null) {
			//가져온 배열의 길이만큼 반복
			for (int i = 0; i < cookies.length; i++) {
				//i번째 쿠키의 이름을 취득한다.
				String cookieName = cookies[i].getName();
				
				//이름이 내가 원하는 값일 경우 값을 복사한다.
				if(cookieName.equals("codePk")) {
					//쿠키값을 취득한다.
					value = cookies[i].getValue();	
				}
			}
		}
		
		System.out.println(value);
		
		Tcodes input = new Tcodes();
		input.setId_code(Integer.parseInt(value));
		
		Tcodes output;
		
		/* tcodes 인증번호 확인 처리 */
		try {
			//pk값으로 인증번호 조회
			output = tcodesService.getCode(input);

		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.getJsonError("인증번호가 없습니다.");
		}

		System.out.println("발급 "+output.getCode());
		System.out.println("입력 "+code_check);
		
		/* 3)JSON 출력하기 */
		Map<String, Object> data = new HashMap<String, Object>();
		
		data.put("item", output);
		System.out.println(data);
		return webHelper.getJsonData(data);
		
	}
	
	
}
