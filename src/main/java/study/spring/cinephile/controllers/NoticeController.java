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

import study.spring.cinephile.service.NoticeService;
import study.spring.cinephile.helper.PageData;
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
	public ModelAndView noticeList(Model model,
		// 검색어
		@RequestParam(value="keyword", required=false) String keyword,
		// 현재 페이지 번호
		@RequestParam(value="page", defaultValue = "1") int nowPage){
		
		/** 페이지 구현에 필요한 변수값 생성 */
		int totalCount = 0;
		int listCount = 10;
		int pageCount = 5;
		
		/** 데이터 조회 */
		// 조회에 필요한 조건값 Beans에 담기
		Notice input = new Notice();
		input.setNotice_title(keyword);
		input.setNotice_content(keyword);
		
		List<Notice> output = null;
		PageData pageData = null;
		
		try {
			// 전체 게시글 수 조회
			totalCount = noticeService.getNoticeCount(input);
			// 페이지 번호 계산 -> 로그로 출력
			pageData = new PageData(nowPage, totalCount, listCount, pageCount);
			
			Notice.setOffset(pageData.getOffset());
			Notice.setListCount(pageData.getListCount());
			
			output = noticeService.getNoticeList_date(input);
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
		
		return new ModelAndView("support/notice_list");
	}
	
	/** 상세 페이지 */
	@RequestMapping(value="/support/notice_detail.do", method=RequestMethod.GET)
	public ModelAndView noticeDetail(Model model,
			@RequestParam(value="notice_id", defaultValue="0") int notice_id) {
		
		/** 유효성 검사 */
		if (notice_id == 0) {
			return webHelper.redirect(null, "해당 공지사항이 없습니다.");
		}
		
		/** 데이터 조회 */
		// 데이터 조회에 필요한 조건값 Beans에 담기
		Notice input = new Notice();
		input.setNotice_id(notice_id);
		
		// 조회결과를 저장할 객체
		Notice output = null;
		
		try {
			// 데이터 조회
			output = noticeService.getNoticeItem_date(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/** view 처리 */
		model.addAttribute("output", output);
		
		return new ModelAndView("support/notice_detail");
	}
	
	/** 상세 페이지 (관리자용) */
	@RequestMapping(value="/admin/admin_notice_detail.do", method=RequestMethod.GET)
	public ModelAndView adminNoticeDetail(Model model,
			@RequestParam(value="notice_id", defaultValue="0") int notice_id) {
		
		/** 유효성 검사 */
		if (notice_id == 0) {
			return webHelper.redirect(null, "해당 공지사항이 없습니다.");
		}
		
		/** 데이터 조회 */
		// 데이터 조회에 필요한 조건값 Beans에 담기
		Notice input = new Notice();
		input.setNotice_id(notice_id);
		
		// 조회결과를 저장할 객체
		Notice output = null;
		
		try {
			// 데이터 조회
			output = noticeService.getNoticeItem(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/** view 처리 */
		model.addAttribute("output", output);
		
		return new ModelAndView("admin/admin_notice_detail");
	}
	
	
	/** 공지사항 작성 페이지 */
	@RequestMapping(value="/admin/admin_notice_write.do", method=RequestMethod.GET)
	public ModelAndView noticeWrite(Model model) {
		
		return new ModelAndView("admin/admin_notice_write");
	}
	
	/** 공지사항 작성에 대한 action 페이지 */
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
	
	/** 공지사항 수정 입력 페이지 */
	@RequestMapping(value="/admin/admin_notice_edit.do", method = RequestMethod.GET)
	public ModelAndView noticeEdit(Model model,
			@RequestParam(value="notice_id", required = false) int notice_id) {
		
		/** 입력한 파라미터에 대한 유효성 검사 */
		if (notice_id == 0)			{ return webHelper.redirect(null, "공지사항이 없습니다."); }
		System.out.println("유효성검사 완료");
		
		/** 데이터 수정 */
		// 수정할 값들을 Beans에 담는다
		Notice input = new Notice();
		input.setNotice_id(notice_id);
		
		Notice output = null;
				
		try {
			// 공지사항 기본 정보 조회
			output = noticeService.getNoticeItem(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/** view 처리 */
		model.addAttribute("output", output);
		
		return new ModelAndView("admin/admin_notice_edit");
	}
	
	/** 수정페이지에 대한 action 페이지 */
	@RequestMapping(value="/admin/admin_notice_edit_ok.do", method=RequestMethod.POST)
	public ModelAndView noticeEdit_ok(Model model,
			@RequestParam(value="notice_id", required = false) int notice_id,
			@RequestParam(value="notice_title", required = false) String notice_title,
			@RequestParam(value="notice_content", required = false) String notice_content) {
		System.out.println("데이터 입력 완료");
		
		/** 입력한 파라미터에 대한 유효성 검사 */
		if (notice_id == 0)						{ return webHelper.redirect(null, "공지사항이 존재하지 않습니다."); }
		if (notice_title.equals(""))			{ return webHelper.redirect(null, "제목을 입력하세요."); }
		if (notice_content.equals(""))		{ return webHelper.redirect(null, "내용을 입력하세요."); }
		System.out.println("유효성검사 완료");
		
		/** 데이터 저장 */
		// 저장할 값 Beans에 담기
		Notice input = new Notice();
		input.setNotice_id(notice_id);
		input.setNotice_title(notice_title);
		input.setNotice_content(notice_content);
		System.out.println("데이터 수정 완료");
		
		Notice output = null;
		
		try {
			// 데이터 저장
			noticeService.editNotice(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		// 결과 확인을 위한 JSON 출력
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("item", output);
		
		/** 결과를 확인하기 위한 페이지 이동 */
		// 결과 확인을 위해 저장시 생성된 PK값을 상세 페이지로 전달
		String redirectUrl = contextPath + "/admin/admin_notice_detail.do?notice_id=" + input.getNotice_id();
		
		return webHelper.redirect(redirectUrl, "수정 완료");
	}
	
	/** 공지사항 삭제 */
	@RequestMapping(value="/admin/admin_notice_delete.do", method = RequestMethod.GET)
	public ModelAndView noticeDelete(Model model,
			@RequestParam(value="notice_id", defaultValue="0") int notice_id) {
		
		/** 1) 파라미터 유효성 검사 */
		// 이 값이 존재하지 않는다면 데이터 삭제가 불가능하므로 반드시 필수값으로 처리 해야함
		if (notice_id == 0) { return webHelper.redirect(null, "공지사항이 존재하지 않습니다."); }
		
		/** 2) 데이터 삭제 */
		// 데이터 삭제에 필요한 조건값을 Beans에 저장
		Notice input = new Notice();
		input.setNotice_id(notice_id);
		
		try {
			noticeService.deleteNotice(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/** 3) 페이지 이동 */
		// 확인할 대상이 삭제된 상태이므로 목록 페이지로 이동
		return webHelper.redirect(contextPath + "/admin/admin_notice_list.do", "삭제되었습니다.");
				
	}
	
}
