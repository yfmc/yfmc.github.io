package study.spring.cinephile.controllers;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import study.spring.cinephile.helper.PageData;
import study.spring.cinephile.helper.WebHelper;
import study.spring.cinephile.model.Faq;
import study.spring.cinephile.model.Notice;
import study.spring.cinephile.model.Qna;
import study.spring.cinephile.service.FaqService;
import study.spring.cinephile.service.NoticeService;
import study.spring.cinephile.service.QnaService;

@Controller
public class AdminController {
	
	@Autowired
	WebHelper webHelper;
	
	/** Service 패턴 구현체 주입 */
	@Autowired
	FaqService faqService;
	
	@Autowired
	QnaService qnaService;
	
	@Autowired
	NoticeService noticeService;
	
	/** "/프로젝트 이름"에 해당하는 ContextPath 변수 주입 */
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	/** 관리자 로그인 페이지 */
	@RequestMapping(value="/admin/admin_login.do", method=RequestMethod.GET)
	public ModelAndView adminLogin(Model model) {
		
		return new ModelAndView("admin/admin_login");
	}
	
	/** 관리자 홈 페이지 */
	@RequestMapping(value="/admin/admin_home.do", method=RequestMethod.GET)
	public ModelAndView adminHome(Model model) {
		
		return new ModelAndView("admin/admin_home");
	}
	
	/** 관리자 공지사항 목록 페이지 */
	@RequestMapping(value="/admin/admin_notice_list.do", method=RequestMethod.GET)
	public ModelAndView adminNoticeList(Model model,
			// 현재 페이지 번호
			@RequestParam(value="page", defaultValue = "1") int nowPage){
			
			/** 페이지 구현에 필요한 변수값 생성 */
			int totalCount = 0;
			int listCount = 20;
			int pageCount = 5;
			
			/** 데이터 조회 */
			// 조회에 필요한 조건값 Beans에 담기
			Notice input = new Notice();
			
			List<Notice> output = null;
			PageData pageData = null;
			
			try {
				// 전체 게시글 수 조회
				totalCount = noticeService.getNoticeCount(input);
				// 페이지 번호 계산 -> 로그로 출력
				pageData = new PageData(nowPage, totalCount, listCount, pageCount);
				
				Notice.setOffset(pageData.getOffset());
				Notice.setListCount(pageData.getListCount());
				
				output = noticeService.getNoticeList(input);
			} catch (Exception e) {
				return webHelper.redirect(null, e.getLocalizedMessage());
			}
			
			
			// view 처리
			model.addAttribute("output", output);
			model.addAttribute("pageData", pageData);
			
		return new ModelAndView("admin/admin_notice_list");
	}
	
	
	/** 관리자 자주찾는질문 목록 페이지 */
	@RequestMapping(value="/admin/admin_faq_list.do", method=RequestMethod.GET)
	public ModelAndView adminFaqList(Model model,
			// 현재 페이지 번호
			@RequestParam(value="page", defaultValue = "1") int nowPage){
			
			/** 페이지 구현에 필요한 변수값 생성 */
			int totalCount = 0;
			int listCount = 20;
			int pageCount = 5;
			
			/** 데이터 조회 */
			// 조회에 필요한 조건값 Beans에 담기
			Faq input = new Faq();
			
			List<Faq> output = null;
			PageData pageData = null;
			
			try {
				// 전체 게시글 수 조회
				totalCount = faqService.getFaqCount(input);
				// 페이지 번호 계산 -> 로그로 출력
				pageData = new PageData(nowPage, totalCount, listCount, pageCount);
				
				Faq.setOffset(pageData.getOffset());
				Faq.setListCount(pageData.getListCount());
				
				output = faqService.getFaqList(input);
			} catch (Exception e) {
				return webHelper.redirect(null, e.getLocalizedMessage());
			}
			
			
			// view 처리
			model.addAttribute("output", output);
			model.addAttribute("pageData", pageData);
		
		return new ModelAndView("admin/admin_faq_list");
	}
	
}
