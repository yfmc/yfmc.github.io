package study.spring.cinephile.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import study.spring.cinephile.service.FaqService;
import study.spring.cinephile.helper.PageData;
import study.spring.cinephile.helper.RegexHelper;
import study.spring.cinephile.helper.WebHelper;
import study.spring.cinephile.model.Faq;
import study.spring.cinephile.model.Notice;

@Controller
public class FaqController {
	
	@Autowired
	WebHelper webHelper;

	@Autowired
	RegexHelper regexHelper;
	
	/** Service 패턴 구현체 주입 */
	@Autowired
	FaqService faqService;
	
	/** "/프로젝트 이름"에 해당하는 ContextPath 변수 주입 */
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	/** 목록 페이지 */
	@RequestMapping(value="/support/faq_list.do", method=RequestMethod.GET)
	public ModelAndView faqList(Model model,
			// 검색어
			@RequestParam(value="keyword", required=false) String keyword,
			// 현재 페이지 번호
			@RequestParam(value="page", defaultValue="1") int nowPage){
			
			/** 페이지 구현에 필요한 변수값 생성 */
			int totalCount = 0;
			int listCount = 10;
			int pageCount = 5;
			
			/** 데이터 조회 */
			// 조회에 필요한 조건값 Beans에 담기
			Faq input = new Faq();
			input.setFaq_title(keyword);
			input.setFaq_content(keyword);
			
			List<Faq> output = null;
			PageData pageData = null;
			
			try {
				// 전체 게시글 수 조회
				totalCount = faqService.getFaqCount(input);
				// 페이지 번호 계산 -> 로그로 출력
				pageData = new PageData(nowPage, totalCount, listCount, pageCount);
				
				Faq.setOffset(pageData.getOffset());
				Faq.setListCount(pageData.getListCount());
				
				output = faqService.getFaqList_date(input);
			} catch (Exception e) {
				return webHelper.redirect(null, e.getLocalizedMessage());
			}
			
			// 검색결과 수
			int count = output.size();
			
			// view 처리
			model.addAttribute("keyword", keyword);
			model.addAttribute("output", output);
			model.addAttribute("pageData", pageData);
			model.addAttribute("count", count);
			
		return new ModelAndView("support/faq_list") ;
	}
	
	/** 상세 페이지 */
	@RequestMapping(value="/support/faq_detail.do", method=RequestMethod.GET)
	public ModelAndView faqDetail(Model model,
			@RequestParam(value="faq_id", defaultValue="0") int faq_id) {
		
		/** 유효성 검사 */
		if (faq_id == 0) {
			return webHelper.redirect(null, "해당 자주찾는 질문이 없습니다.");
		}
		
		/** 데이터 조회 */
		// 데이터 조회에 필요한 조건값 Beans에 담기
		Faq input = new Faq();
		input.setFaq_id(faq_id);
		
		// 조회결과를 저장할 객체
		Faq output = null;
		
		try {
			// 데이터 조회
			output = faqService.getFaqItem_date(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/** view 처리 */
		model.addAttribute("output", output);
		
		return new ModelAndView("support/faq_detail");
	}
	
	/** 작성 폼 페이지 */
	@RequestMapping(value="/admin/admin_faq_write.do", method=RequestMethod.GET)
	public ModelAndView faqWrite(Model model) {
		
		return new ModelAndView("admin/admin_faq_write");
	}
	
	/** 작성 폼에 대한 action 페이지 */
	@RequestMapping(value="/admin/admin_faq_write_ok.do", method=RequestMethod.GET)
	public ModelAndView faqWrite_ok(Model model,
			@RequestParam(value="faq_title", required = false) String faq_title,
			@RequestParam(value="faq_content", required = false) String faq_content) {
		System.out.println("데이터 입력 완료");
		
		/** 입력한 파라미터에 대한 유효성 검사 */
		if (faq_title.equals(""))			{ return webHelper.redirect(null, "제목을 입력하세요."); }
		if (faq_content.equals(""))		{ return webHelper.redirect(null, "내용을 입력하세요."); }
		System.out.println("유효성검사 완료");
		
		/** 데이터 저장 */
		// 저장할 값 Beans에 담기
		Faq input = new Faq();
		input.setFaq_title(faq_title);
		input.setFaq_content(faq_content);
		System.out.println("데이터 저장 완료");
		
		Faq output = null;
		
		try {
			// 데이터 저장
			faqService.addFaq(input);
			output = faqService.getFaqItem(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		// 결과 확인을 위한 JSON 출력
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("item", output);
		
		/** 결과를 확인하기 위한 페이지 이동 */
		// 결과 확인을 위해 저장시 생성된 PK값을 상세 페이지로 전달
		String redirectUrl = contextPath + "/admin/admin_faq_detail.do?faq_id=" + input.getFaq_id();
		
		return webHelper.redirect(redirectUrl, "저장 완료");
	}
	
	/** 상세 페이지 (관리자용) */
	@RequestMapping(value="/admin/admin_faq_detail.do", method=RequestMethod.GET)
	public ModelAndView adminFaqDetail(Model model,
			@RequestParam(value="faq_id", defaultValue="0") int faq_id) {
		
		/** 유효성 검사 */
		if (faq_id == 0) {
			return webHelper.redirect(null, "해당 공지사항이 없습니다.");
		}
		
		/** 데이터 조회 */
		// 데이터 조회에 필요한 조건값 Beans에 담기
		Faq input = new Faq();
		input.setFaq_id(faq_id);
		
		// 조회결과를 저장할 객체
		Faq output = null;
		
		try {
			// 데이터 조회
			output = faqService.getFaqItem(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/** view 처리 */
		model.addAttribute("output", output);
		
		return new ModelAndView("admin/admin_faq_detail");
	}
	
	/** 자주찾는 질문 수정 입력 페이지 */
	@RequestMapping(value="/admin/admin_faq_edit.do", method = RequestMethod.GET)
	public ModelAndView faqEdit(Model model,
			@RequestParam(value="faq_id", required = false) int faq_id) {
		
		/** 입력한 파라미터에 대한 유효성 검사 */
		if (faq_id == 0)			{ return webHelper.redirect(null, "자주찾는 질문이 없습니다."); }
		System.out.println("유효성검사 완료");
		
		/** 데이터 수정 */
		// 수정할 값들을 Beans에 담는다
		Faq input = new Faq();
		input.setFaq_id(faq_id);
		
		Faq output = null;
				
		try {
			// 자주찾는 질문 기본 정보 조회
			output = faqService.getFaqItem(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/** view 처리 */
		model.addAttribute("output", output);
		
		return new ModelAndView("admin/admin_faq_edit");
	}
	
	/** 수정페이지에 대한 action 페이지 */
	@RequestMapping(value="/admin/admin_faq_edit_ok.do", method=RequestMethod.POST)
	public ModelAndView FaqEdit_ok(Model model,
			@RequestParam(value="faq_id", required = false) int faq_id,
			@RequestParam(value="faq_title", required = false) String faq_title,
			@RequestParam(value="faq_content", required = false) String faq_content) {
		System.out.println("데이터 입력 완료");
		
		/** 입력한 파라미터에 대한 유효성 검사 */
		if (faq_id == 0)							{ return webHelper.redirect(null, "자주찾는 질문이 존재하지 않습니다."); }
		if (faq_title.equals(""))			{ return webHelper.redirect(null, "제목을 입력하세요."); }
		if (faq_content.equals(""))		{ return webHelper.redirect(null, "내용을 입력하세요."); }
		System.out.println("유효성검사 완료");
		
		/** 데이터 저장 */
		// 저장할 값 Beans에 담기
		Faq input = new Faq();
		input.setFaq_id(faq_id);
		input.setFaq_title(faq_title);
		input.setFaq_content(faq_content);
		System.out.println("데이터 수정 완료");
		
		Faq output = null;
		
		try {
			// 데이터 저장
			faqService.editFaq(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		// 결과 확인을 위한 JSON 출력
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("item", output);
		
		/** 결과를 확인하기 위한 페이지 이동 */
		// 결과 확인을 위해 저장시 생성된 PK값을 상세 페이지로 전달
		String redirectUrl = contextPath + "/admin/admin_faq_detail.do?faq_id=" + input.getFaq_id();
		
		return webHelper.redirect(redirectUrl, "수정 완료");
	}
	
	/** 자주찾는 질문 삭제 */
	@RequestMapping(value="/admin/admin_faq_delete.do", method = RequestMethod.GET)
	public ModelAndView faqDelete(Model model,
			@RequestParam(value="faq_id", defaultValue="0") int faq_id) {
		
		/** 1) 파라미터 유효성 검사 */
		// 이 값이 존재하지 않는다면 데이터 삭제가 불가능하므로 반드시 필수값으로 처리 해야함
		if (faq_id == 0) { return webHelper.redirect(null, "질문이 존재하지 않습니다."); }
		
		/** 2) 데이터 삭제 */
		// 데이터 삭제에 필요한 조건값을 Beans에 저장
		Faq input = new Faq();
		input.setFaq_id(faq_id);
		
		try {
			faqService.deleteFaq(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/** 3) 페이지 이동 */
		// 확인할 대상이 삭제된 상태이므로 목록 페이지로 이동
		return webHelper.redirect(contextPath + "/admin/admin_faq_list.do", "삭제되었습니다.");
				
	}
	
}
