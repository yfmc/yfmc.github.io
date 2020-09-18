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

import study.spring.cinephile.service.NoticeService;
import study.spring.cinephile.helper.RegexHelper;
import study.spring.cinephile.helper.WebHelper;
import study.spring.cinephile.model.Notice;

@Controller
public class NoticeController {
	
	@Autowired
	WebHelper webHelper;

	@Autowired
	RegexHelper regexHelper;
	
	/** Service 패턴 구현체 주입 */
	@Autowired
	NoticeService noticeService;
	
	/** "/프로젝트 이름"에 해당하는 ContextPath 변수 주입 */
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	/** 목록 페이지 */
	@RequestMapping(value="/support/notice_list.do", method=RequestMethod.GET)
	public ModelAndView noticeList(Model model) {
		
		return new ModelAndView("support/notice_list") ;
	}
	
	/** 상세 페이지 */
	@RequestMapping(value="/support/notice_detail.do", method=RequestMethod.GET)
	public ModelAndView noticeDetail(Model model) {
		
		return new ModelAndView("support/notice_detail");
	}
	
	/** 작성 폼 페이지 */
	@RequestMapping(value="/admin/admin_notice_write.do", method=RequestMethod.GET)
	public ModelAndView noticeWrite(Model model) {
		
		return new ModelAndView("admin/admin_notice_write");
	}
	
	/** 작성 폼에 대한 action 페이지 */
	@RequestMapping(value="/admin/admin_notice_write_ok.do", method=RequestMethod.GET)
	public ModelAndView noticeWrite_ok(Model model,
			@RequestParam(value="notice_title", required = false) String notice_title,
			@RequestParam(value="notice_content", required = false) String notice_content,
			@RequestParam(value="views", defaultValue="0") int views) {
		System.out.println("데이터 입력 완료");
		
		/** 입력한 파라미터에 대한 유효성 검사 */
		if (notice_title.equals(""))			{ return webHelper.redirect(null, "제목을 입력하세요."); }
		if (notice_content.equals(""))		{ return webHelper.redirect(null, "내용을 입력하세요."); }
		System.out.println("유효성검사 완료");
		
		/** 데이터 저장 */
		// 저장할 값 Beans에 담기
		Notice input = new Notice();
		input.setNotice_title(notice_title);
		input.setNotice_content(notice_content);
		System.out.println("데이터 저장 완료");
		
		Notice output = null;
		
		try {
			// 데이터 저장
			noticeService.addNotice(input);
			output = noticeService.getNoticeItem(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		// 결과 확인을 위한 JSON 출력
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("item", output);
		
		/** 결과를 확인하기 위한 페이지 이동 */
		// 결과 확인을 위해 저장시 생성된 PK값을 상세 페이지로 전달
		String redirectUrl = contextPath + "/admin/admin_notice_detail.do?notice_id=" + input.getNotice_id();
		
		return webHelper.redirect(redirectUrl, "저장 완료");
	}
	
	
	
}
