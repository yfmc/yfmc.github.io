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
public class AccountRestController {
	
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
	@RequestMapping(value="/Email.do", method = RequestMethod.GET)
	public Map<String, Object> get_email(Model model,
			//검색어
			@RequestParam(value="user_email", required=false) String user_email){
		System.out.println("accountcontroller 실행");
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
		
		return webHelper.getJsonData(data);
		
	}
	
	@RequestMapping(value="/putMemInfo", method=RequestMethod.POST)
	public Map<String, Object> post(
			@RequestParam(value="user_id", required=false) String user_id,
			@RequestParam(value="user_pw", required=false) String user_pw,
			@RequestParam(value="user_name", required=false) String user_name,
			@RequestParam(value="birthdate", required=false) String birthdate,
			@RequestParam(value="gender", required=false) String gender,
			@RequestParam(value="user_email", required=false) String user_email,
			@RequestParam(value="phone", required=false) String phone,
			@RequestParam(value="postcode", required=false) String postcode,
			@RequestParam(value="addr", required=false) String addr,
			@RequestParam(value="addr_detail", required=false) String addr_detail,
			@RequestParam(value="is_out", defaultValue="N") String is_out){
		System.out.println("컨트롤뤄 실행 ");
		/* 1)사용자가 입력한 파라미터에 대한 유효성 검사 */
		//일반 문자열 입력 컬럼 --> String으로 파라미터가 선언되어 있는 겨우는 값이 입력되지 않으면 빈 문자열로 처리된다.
		if(user_id.equals(""))					{return webHelper.getJsonWarning("아이디를 입력해주세요."); }		
		if(!regexHelper.isEngNum(user_id))		{return webHelper.getJsonWarning("아이디는 숫자, 영문만 가능합니다."); }
		
		if(user_pw.equals(""))		{return webHelper.getJsonWarning("비밀번호를 입력하세요."); }
		
		if(user_name.equals(""))		{return webHelper.getJsonWarning("이름을 입력하세요."); }
		if(!regexHelper.isKor(user_name))		{return webHelper.getJsonWarning("이름은 한글만 입력 가능합니다."); }
		
		if(birthdate.equals(""))		{return webHelper.getJsonWarning("생년월일을 입력하세요."); }
		if(gender.equals(""))		{return webHelper.getJsonWarning("성별을 체크해 주세요."); }
		if(phone.equals(""))		{return webHelper.getJsonWarning("전화번호를 입력해주세요."); }
		if(postcode.equals(""))		{return webHelper.getJsonWarning("우편번호를 선택해주세요."); }
		
				
		
		
		/* 2) 데이터 저장하기 */
		Members input = new Members();
		input.setUser_id(user_id);
		input.setUser_pw(user_pw);
		input.setUser_name(user_name);
		input.setBirthdate(birthdate);
		input.setGender(gender);
		input.setUser_email(user_email);
		input.setPhone(phone);
		input.setPostcode(postcode);
		input.setAddr(addr);
		input.setAddr_detail(addr_detail);

		
		
		//저장된 결과를 조회하기 위한 객체
		Members output = null;
		
		try {
			//데이터 저장
			//--> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 Pk갑이 저장된다.
			membersService.addMembers(input);
			
			//데이터 조회
			output = membersService.getMembersItem(input);
		}catch(Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		
		/* 3)결과를 확인하기 위한 JSON 출력 */
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("item", output);
		return webHelper.getJsonData(map);
		
		
	}
}
