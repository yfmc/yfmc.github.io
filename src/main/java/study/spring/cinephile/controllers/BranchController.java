package study.spring.cinephile.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import study.spring.cinephile.helper.WebHelper;

@Controller
public class BranchController {
	@Autowired
	WebHelper webHelper;
	
	/* "/프로젝트이름"에 해당하는 ContextPath 변수 주입 */
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	/* 지역별 극장정보 페이지 */
	@RequestMapping(value="/branch.do", method=RequestMethod.GET)
	public String branch() {
		return "branch/01-branch";
	}
}
