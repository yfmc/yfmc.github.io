package study.spring.cinephile.controllers;

import java.util.HashMap;
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
import study.spring.cinephile.helper.RegexHelper;
import study.spring.cinephile.helper.WebHelper;
import study.spring.cinephile.model.Faq;

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
	public ModelAndView faqList(Model model) {
		
		return new ModelAndView("support/faq_list") ;
	}
	
	/** 상세 페이지 */
	@RequestMapping(value="/support/faq_detail.do", method=RequestMethod.GET)
	public ModelAndView faqDetail(Model model) {
		
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
	
	
	
}
