package study.spring.cinephile.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;
import study.spring.cinephile.helper.MailHelper;
import study.spring.cinephile.helper.PageData;
import study.spring.cinephile.helper.RegexHelper;
import study.spring.cinephile.helper.UploadItem;
import study.spring.cinephile.helper.WebHelper;
import study.spring.cinephile.model.Members;
import study.spring.cinephile.model.Qna;
import study.spring.cinephile.service.QnaService;

@Slf4j
@Controller
public class QnaController {
	
	@Autowired
	WebHelper webHelper;

	@Autowired
	RegexHelper regexHelper;
	
	@Autowired
	MailHelper mailHelper;
	
	@Autowired
	QnaService qnaService;
	
	/** "/프로젝트 이름"에 해당하는 ContextPath 변수 주입 */
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	/** 상세 페이지 */
	@RequestMapping(value="/admin/admin_qna_detail.do", method=RequestMethod.GET)
	public ModelAndView qnaDetail(Model model,
			@RequestParam(value="qna_id", defaultValue="0") int qna_id) {
		
		/** 유효성 검사 */
		if (qna_id == 0) {
			return webHelper.redirect(null, "해당 1:1문의내역이 없습니다.");
		}
		
		/** 데이터 조회 */
		// 데이터 조회에 필요한 조건값 Beans에 담기
		Qna input = new Qna();
		input.setQna_id(qna_id);
		
		// 조회결과를 저장할 객체
		Qna output = null;
		
		try {
			// 데이터 조회
			output = qnaService.getQnaItem(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/** view 처리 */
		model.addAttribute("output", output);
		
		return new ModelAndView("admin/admin_qna_detail");
	}
	
	/** 작성 페이지 */
	@RequestMapping(value="/support/qna.do", method=RequestMethod.GET)
	public ModelAndView qna(Model model, HttpServletRequest request) {
			
		// 로그인시 회원 정보 가져오기0
		HttpSession session = request.getSession();
		Members mySession = (Members) session.getAttribute("loggedIn");
		
		if (mySession != null ) {
			model.addAttribute("my_session", mySession);
		return new ModelAndView ("support/qna");
		} else {
			return new ModelAndView ("support/qna");
		}
	}
	
	/** 작성 폼에 대한 action 페이지 */
	@RequestMapping(value="/support/qna_ok.do", method=RequestMethod.POST)
	public ModelAndView qnaOk(Model model,HttpServletRequest request,
			@RequestParam(value="qna_title", required = false) String qna_title,
			@RequestParam(value="qna_content", required = false) String qna_content,
			@RequestParam(value="user_name", required = false) String user_name,
			@RequestParam(value="birthdate", required = false) String birthdate,
			@RequestParam(value="tel", required = false) String tel,
			@RequestParam(value="email", required = false) String email,
			@RequestParam() MultipartFile file_img) {
		
		System.out.println("데이터 입력 완료");
		
		/** 입력한 파라미터에 대한 유효성 검사 */
		if (qna_title.equals(""))			{ return webHelper.redirect( null, "제목을 입력해주세요."); }
		if (qna_content.equals(""))		{ return webHelper.redirect( null, "문의내용을 입력해주세요."); }
		if (user_name.equals(""))			{ return webHelper.redirect( null, "이름을 입력해주세요."); }
		if (birthdate.equals(""))			{ return webHelper.redirect( null, "생년월일을 입력해주세요."); }
		if (tel.equals(""))						{ return webHelper.redirect( null, "연락처를 입력해주세요."); }
		if (email.equals(""))				{ return webHelper.redirect( null, "이메일을 입력해주세요."); }
		
		/** 데이터 저장 */
		// 저장할 값 Beans에 담기
		Qna input = new Qna();
		input.setQna_title(qna_title);
		input.setQna_content(qna_content);
		input.setUser_name(user_name);
		input.setBirthdate(birthdate);
		input.setTel(tel);
		input.setEmail(email);
		
		System.out.println("데이터 저장 완료");
		
		Qna output = null;
		
		/** 업로드 처리 */		
		UploadItem item = null;
		
		try {
			// 데이터 저장
			qnaService.addQna(input);
			output = qnaService.getQnaItem(input);
			item = webHelper.saveMultipartFile(file_img);
		} catch (NullPointerException e){
			e.printStackTrace();
			return webHelper.redirect(null, "입력된 내용이 없습니다.");
		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.redirect(null, "입력에 실패했습니다.");
		}
		
		/** 썸네일 이미지 생성 */
		if (item != null && item.getContentType().indexOf("image") > -1) {
			// 필요한 이미지 사이즈로 썸네일을 생성할 수 있다.
			String thumbnailPath = null;
			
			try {
				thumbnailPath = webHelper.createThumbnail(item.getFilePath(), 240, 240, true);
			} catch (Exception e) {
				e.printStackTrace();
				return webHelper.redirect(null, "썸네일 이미지 생성 실패");
			}
			
			// 썸네일 경로를 URL로 변환
			String thumbnailUrl = webHelper.getUploadUrl(thumbnailPath);
			// 리턴할 객체에 썸네일 정보 추가
			item.setThumbnailPath(thumbnailPath);
			item.setThumbnailUrl(thumbnailUrl);
		}
		
		// 결과 확인을 위한 JSON 출력
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("output", output);
		
		model.addAttribute("item", item);
		
		/** 작성 후 완료 페이지로 이동 */
		String redirectUrl = contextPath + "/support/qna_complete.do";
		
		return webHelper.redirect(redirectUrl, "접수가 완료 되었습니다.");
		
	}
		
	/** 작성 완료 페이지 */
	@RequestMapping(value="/support/qna_complete.do", method=RequestMethod.GET)
	public ModelAndView qna_complete(Model model) {
					
		return new ModelAndView ("support/qna_complete");
	}
	
	/** 1:1문의 답변 입력 페이지 */
	@RequestMapping(value="/admin/admin_qna_answer.do", method = RequestMethod.GET)
	public ModelAndView qnaAnswer(Model model,
			@RequestParam(value="qna_id", required = false) int qna_id) {
		
		/** 입력한 파라미터에 대한 유효성 검사 */
		if (qna_id == 0)			{ return webHelper.redirect(null, "1:1문의 내역이 없습니다."); }
		System.out.println("유효성검사 완료");
		
		/** 데이터 수정 */
		// 수정할 값들을 Beans에 담는다
		Qna input = new Qna();
		input.setQna_id(qna_id);
		
		Qna output = null;
				
		try {
			// 자주찾는 질문 기본 정보 조회
			output = qnaService.getQnaItem(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/** view 처리 */
		model.addAttribute("output", output);
		
		return new ModelAndView("admin/admin_qna_answer");
	}
	
	/** 1:1문의 답변페이지에 대한 action 페이지 */
	@RequestMapping(value="/admin/admin_qna_answer_ok.do", method=RequestMethod.POST)
	public ModelAndView qnaAnswer_ok(Model model,
			@RequestParam(value="qna_id", required = false) int qna_id,
			@RequestParam(value="email", required = false) String email,
			@RequestParam(value="subject", required = false) String subject,
			@RequestParam(value="answer_content", required = false) String answer_content) {
		System.out.println("데이터 입력 완료");
		
		/** 입력한 파라미터에 대한 유효성 검사 */
		if (qna_id == 0)							{ return webHelper.redirect(null, "1:1문의 내역이 존재하지 않습니다."); }
		if (email.equals(""))					{ return webHelper.redirect(null, "이메일주소를 입력하세요."); }
		if (subject.equals(""))					{ return webHelper.redirect(null, "메일제목을 입력하세요."); }
		if (answer_content.equals(""))		{ return webHelper.redirect(null, "답변내용을 입력하세요."); }
		System.out.println("유효성검사 완료");
		
		/** 데이터 저장 */
		// 저장할 값 Beans에 담기
		Qna input = new Qna();
		input.setQna_id(qna_id);
		input.setAnswer_content(answer_content);
		System.out.println("데이터 수정 완료");
		
		Qna output = null;
		
		try {
			// 데이터 저장
			qnaService.editQna(input);
			// 메일 발송
			mailHelper.sendMail(email, subject, answer_content);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		// 결과 확인을 위한 JSON 출력
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("item", output);
		
		/** 결과를 확인하기 위한 페이지 이동 */
		// 결과 확인을 위해 저장시 생성된 PK값을 상세 페이지로 전달
		String redirectUrl = contextPath + "/admin/admin_qna_detail.do?qna_id=" + input.getQna_id();
		
		return webHelper.redirect(redirectUrl, "답변 완료");
	}
}
