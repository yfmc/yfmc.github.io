package study.spring.cinephile.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import study.spring.cinephile.helper.WebHelper;
import study.spring.cinephile.model.Members;
import study.spring.cinephile.service.MembersService;

@Controller
public class LoginController {
	
	@Autowired
	WebHelper webHelper;
	
	@RequestMapping(value="/login/01-login.do")
	public ModelAndView login() {
		return new ModelAndView("login/01-login");
	}
	
	@RequestMapping(value="01-login_ok.do")
	public ModelAndView login_ok(Model model,
			//아이디
			@RequestParam(value="user_id", required=false) String user_id,
			//비번
			@RequestParam(value="user_pw", required=false) String user_pw) {
		
		/* 데이터 조회하기 */
		Members input = new Members();
		input.setUser_id(user_id);
		input.setUser_pw(user_pw);
		
		//조회 결과가 저장될 객체
		List<Members> output = null; //조회결과가 저장될 객체
		
		return new ModelAndView("home");
	}
	
	@RequestMapping(value="/login/02-findidpassword.do")
	public ModelAndView findid() {
		return new ModelAndView("login/02-findidpassword");
	}
}
