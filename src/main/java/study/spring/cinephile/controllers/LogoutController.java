package study.spring.cinephile.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;
import study.spring.cinephile.helper.WebHelper;
import study.spring.cinephile.model.Members;
@Slf4j
@Controller
public class LogoutController {
	
	@Autowired
	WebHelper webHelper;
	
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	@RequestMapping(value="/login/logout.do")
	public ModelAndView login(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		Members mySession = (Members) session.getAttribute("loggedIn");
		
		session.removeAttribute("loggedIn");
	
		
		
		String redirectUrl = contextPath + "/index.do";
		return webHelper.redirect(redirectUrl, "로그아웃 되었습니다.");
	}
	
}