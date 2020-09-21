package study.spring.cinephile.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;
import study.spring.cinephile.helper.PageData;
import study.spring.cinephile.helper.RegexHelper;
import study.spring.cinephile.helper.WebHelper;
import study.spring.cinephile.model.Members;


@Slf4j
@Controller
public class MypageController {
	@Autowired WebHelper webHelper;
	@Autowired RegexHelper regexHelper;

	
	
	@Value("#{servletContext.contextPath}")
	String contextPath;

	@RequestMapping(value="/mypage/mypagemain.do",method=RequestMethod.GET)
	public String mypagemain(Model model,HttpServletRequest request) {
		
		HttpSession session=request.getSession();
		Members mySession=(Members)session.getAttribute("loggedIn");
		
		model.addAttribute("my_session",mySession);
		
		return "mypage/mypagemain";
	}
	
	@RequestMapping(value="/mypage/bookinglist.do",method=RequestMethod.GET)
	public String bookinglist(Model model,HttpServletRequest request) {
		HttpSession session=request.getSession();
		Members mySession=(Members)session.getAttribute("loggedIn");
		
		model.addAttribute("my_session",mySession);
		return "mypage/bookinglist";
	}
	
	@RequestMapping(value="/mypage/changeinfo-(1).do",method=RequestMethod.GET)
	public String changeinfo1(Model model) {
		
		return "mypage/changeinfo-(1)";
	}
	
	@RequestMapping(value="/mypage/changeinfo-(2).do",method=RequestMethod.GET)
	public String changeinfo2(Model model,HttpServletRequest request) {
		HttpSession session=request.getSession();
		Members mySession=(Members)session.getAttribute("loggedIn");
		
		model.addAttribute("my_session",mySession);
		return "mypage/changeinfo-(2)";
	}
	
	@RequestMapping(value="/mypage/changeinfo-(3).do",method=RequestMethod.POST)
	public String changeinfo3(Model model) {
		
		return "mypage/changeinfo-(3)";
	}
	
	@RequestMapping(value="/mypage/choicelist.do",method=RequestMethod.GET)
	public String choicelist(Model model,HttpServletRequest request) {
		HttpSession session=request.getSession();
		Members mySession=(Members)session.getAttribute("loggedIn");
		
		model.addAttribute("my_session",mySession);
		
		return "mypage/choicelist";
	}
	
	@RequestMapping(value="/mypage/inquirylist.do",method=RequestMethod.GET)
	public String inquirylist(Model model,HttpServletRequest request) {
		HttpSession session=request.getSession();
		Members mySession=(Members)session.getAttribute("loggedIn");
		
		model.addAttribute("my_session",mySession);
		return "mypage/inquirylist";
	}
	
	@RequestMapping(value="/mypage/inquirypost.do",method=RequestMethod.GET)
	public String inquirypost(Model model) {
		
		return "mypage/inquirypost";
	}
	
	@RequestMapping(value="/mypage/oftentheater.do",method=RequestMethod.GET)
	public String oftentheater(Model model) {
		
		return "mypage/oftentheater";
	}
	
	@RequestMapping(value="/mypage/withdrawal-(1).do",method=RequestMethod.GET)
	public String withdrawal1(Model model) {
		
		return "mypage/withdrawal-(1)";
	}
	
	@RequestMapping(value="/mypage/withdrawal-(2).do",method=RequestMethod.GET)
	public String withdrawal2(Model model) {
		
		return "mypage/withdrawal-(2)";
	}


	
}
