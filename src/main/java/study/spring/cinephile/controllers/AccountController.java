package study.spring.cinephile.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import study.spring.cinephile.helper.RegexHelperForAccount;
import study.spring.cinephile.helper.WebHelper;

@Controller
public class AccountController {
	
	@Autowired
	RegexHelperForAccount regexHelperForAccount;
	
	@Autowired
	WebHelper webHelper;
	
	@RequestMapping(value="/account/01-welcome.do")
	public ModelAndView welcome(Model model) {
		return new ModelAndView("account/01-welcome");
	}
	
	@RequestMapping(value="/account/02-putEmail.do")
	public ModelAndView putEmail(Model model) {
		
		return new ModelAndView("account/02-putEmail");
	}
	
	@RequestMapping(value="/account/03-emailCode.do")
	public ModelAndView emailCode(Model model,
			//입력된 email 값
			@RequestParam(value="user_email", required=false) String user_email) {
		
		/* 이 컨트롤러가 실행될때 */
		//중복검사, 정규표현식 검사
		if(user_email.equals(null)) { return webHelper.redirect(null, "이메일을 입력해주세요.");}
		if(!regexHelperForAccount.isEmail(user_email)) { return webHelper.redirect(null, "이메일 형식이 아닙니다.");}
		
		//이메일로 인증번호 발송 및 세션 ? or 데이터베이스?에 값 저장.
		return new ModelAndView("account/03-emailCode");
	}
}
