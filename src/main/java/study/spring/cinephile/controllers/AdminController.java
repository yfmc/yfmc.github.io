package study.spring.cinephile.controllers;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import study.spring.cinephile.service.FaqService;

@Controller
public class AdminController {

	/** Service 패턴 구현체 주입 */
	@Autowired
	FaqService faqService;
	
	/** "/프로젝트 이름"에 해당하는 ContextPath 변수 주입 */
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	/** 관리자 로그인 페이지 */
	@RequestMapping(value="/admin/admin_login.do", method=RequestMethod.GET)
	public String adminLogin(Model model, HttpServletResponse response) {
		
		return "admin/admin_login";
	}
	
	/** 관리자 홈 페이지 */
	@RequestMapping(value="/admin/admin_home.do", method=RequestMethod.GET)
	public String adminHome(Model model, HttpServletResponse response) {
		
		return "admin/admin_home";
	}
	
	/** 관리자 공지사항 목록 페이지 */
	@RequestMapping(value="/admin/admin_notice_list.do", method=RequestMethod.GET)
	public String adminNoticeList(Model model, HttpServletResponse response) {
		
		return "admin/admin_notice_list";
	}
	
	/** 관리자 자주찾는질문 목록 페이지 */
	@RequestMapping(value="/admin/admin_faq_list.do", method=RequestMethod.GET)
	public String adminFaqList(Model model, HttpServletResponse response) {
		
		return "admin/admin_faq_list";
	}
	
	/** 관리자 1:1문의 목록 페이지 */
	@RequestMapping(value="/admin/admin_qna_list.do", method=RequestMethod.GET)
	public String adminQnaList(Model model, HttpServletResponse response) {
		
		return "admin/admin_qna_list";
	}
}
