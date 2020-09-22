package study.spring.cinephile.controllers;

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

import study.spring.cinephile.helper.MailHelper;
import study.spring.cinephile.helper.RegexHelper;
import study.spring.cinephile.helper.WebHelper;
import study.spring.cinephile.helper.CodeHelper;
import study.spring.cinephile.model.Members;
import study.spring.cinephile.service.MembersService;



@Controller
public class AccountController {

	@Autowired
	WebHelper webHelper;
	
	@Autowired
	MembersService membersService;

	@Autowired
	RegexHelper regexHelper;
	
	@Autowired
	CodeHelper codeHelper;
	@Autowired
	MailHelper mailHelper;
	
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	//막판에 지우기!!!!!!!!!!!!!!!!!!!!!!!
	@RequestMapping(value="/account/05-putMemInfo.do")
	public ModelAndView gogo(Model model) {
		return new ModelAndView("account/05-putMemInfo");
	}
	//막판에 지우기!!!!!!!!!!!!!!!!!!!!
	
	@RequestMapping(value="/account/01-welcome.do")
	public ModelAndView welcome(Model model) {
		return new ModelAndView("account/01-welcome");
	}

	@RequestMapping(value="/account/02-putEmail.do")
	public ModelAndView putEmail(Model model) {

		return new ModelAndView("account/02-putEmail");
	}

	@RequestMapping(value="/account/06-Complete.do")
	public ModelAndView Complete(Model model) {

		return new ModelAndView("account/06-Complete");
	}
	
	@RequestMapping(value="/account/03-emailCode.do")
	public ModelAndView sentCode(Model model) {

		return new ModelAndView("account/03-emailCode");
	}
	
	/* 인증번호 메일보내기 action 페이지 */
	@RequestMapping(value="/account/02-sendCode", method=RequestMethod.POST)
	public ModelAndView sendCode(Model model, HttpServletRequest request,
			@RequestParam(value="user_email", required=false) String user_email) {
		
		String subject = "Cinephile 회원가입 인증번호가 발송되었습니다.";
		
		//5자리의 인증번호 생성하기
		String content = "";
		
		for (int i=0; i<6; i++) {
			content += codeHelper.getInstance().random(0,9); 
		}
		
		/* 메일 발송 처리 */
		try {
			// sendMail()메서드 선언시 throws를 정의했기 때문에 예외처리가 요구된다.
			mailHelper.sendMail(user_email, subject, content);
		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.redirect(null, "메일 발송에 실패했습니다.");
		}
		
		//세션처리 
		HttpSession session = request.getSession();
		if(user_email != null) {
					
			session.setAttribute("user_email", user_email);
			session.setAttribute("code", content);
			
			//세션 유지시간 설정(초단위)
			//60 * 3 = 3분
			session.setMaxInactiveInterval(180);
		}
		
		/* 결과처리 */
		return webHelper.redirect(contextPath + "/account/03-emailCode.do", "인증코드를 발송하였습니다." + content);
		
	}
	
	/* 인증번호 처리 */
	@RequestMapping(value="/account/03-emailCode", method=RequestMethod.POST)
	public ModelAndView checkCode(Model model, HttpServletRequest request,
			@RequestParam(value="code_check", required=false) String code_check) {
		
		HttpSession session = request.getSession();
		
		//세션값 가져오기
		String user_email = (String) session.getAttribute("user_email");
		String code = (String) session.getAttribute("code");
		
		System.out.println("발송 " + user_email);
		System.out.println("입력 " + code);
		
		if(code.equals(code_check)) {
			return webHelper.redirect(contextPath + "/account/05-putMemInfo.do", null);
		}else {
			return webHelper.redirect(null, "인증번호가 일치하지 않습니다.");
		}
		
	}
	
	/* 완료페이지 */
	@RequestMapping(value="/account/06-Complete.do", method = RequestMethod.GET)
	public ModelAndView view(Model model,
			@RequestParam(value="members_id", defaultValue="0") int members_id) {
		/* 1)유효성 검사 */
		//이 값이 존재하지 않는다면 데이터 조회가 불가능하므로 반드시 필수값으로 처리해야 한다.
		if(members_id ==0) {
			return webHelper.redirect(null, "조회된 회원 데이터가 없습니다.");
		}
		
		/* 2)데이터 조회하기 */
		//데이터 조회에 필요한 조건값을 Beans에 저장하기
		Members input = new Members();
		input.setMembers_id(members_id);
		
		//조회결과를 저장할 객체 선언
		Members output = null;
		
		try {
			//데이터 조회
			output = membersService.getMembersItem(input);
		}catch(Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/* 3)View 처리 */
		model.addAttribute("output", output);
		return new ModelAndView("account/06-Complete");
	}
	
	
}
