package study.spring.cinephile.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import study.spring.cinephile.helper.CodeHelper;
import study.spring.cinephile.helper.MailHelper;
import study.spring.cinephile.helper.WebHelper;
import study.spring.cinephile.model.Members;
import study.spring.cinephile.model.Tcodes;
import study.spring.cinephile.service.MembersService;
import study.spring.cinephile.service.TcodesService;

@Controller
public class LoginController {
	
	@Autowired
	WebHelper webHelper;
	
	@Autowired
	TcodesService tcodesService;
	
	@Autowired
	MembersService membersService;
	
	@Autowired
	MailHelper mailHelper;
	
	@Autowired
	CodeHelper codeHelper;
	
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	@RequestMapping(value="/login/01-login.do")
	public ModelAndView login() {
		return new ModelAndView("login/01-login");
	}
	
	 @RequestMapping(value="/login/logout.do")
	   public ModelAndView login(HttpServletRequest request) {
	      
	      HttpSession session = request.getSession();
	      Members mySession = (Members) session.getAttribute("loggedIn");
	      
	      session.removeAttribute("loggedIn");
	   
	      
	      
	      String redirectUrl = contextPath + "/index.do";
	      return webHelper.redirect(redirectUrl, "로그아웃 되었습니다.");
	   }

	
	@RequestMapping(value="/login/05-newpassword.do")
	public ModelAndView putNewPs(Model model,
			@RequestParam(value="user_email", required=false) String user_email) {
		model.addAttribute("user_email", user_email);
		return new ModelAndView("login/05-newpassword");
	}
	
	@RequestMapping(value="/login/04-passwordemail.do")
	public ModelAndView pwCode(Model model,
			@RequestParam(value="user_email", required=false) String user_email) {
		model.addAttribute("user_email", user_email);
		return new ModelAndView("login/04-passwordemail");
	}
	
	@RequestMapping(value="01-login_ok.do")
	public ModelAndView login_ok(Model model,
			//아이디
			@RequestParam(value="user_id", required=false) String user_id,
			//비번
			@RequestParam(value="user_pw", required=false) String user_pw) {
		
		/* 데이터 조회하기 */
		Members input = new Members();
		input.setUser_id(user_id);
		input.setUser_pw(user_pw);
		
		//조회 결과가 저장될 객체
		List<Members> output = null; //조회결과가 저장될 객체
		
		return new ModelAndView("home");
	}
	
	@RequestMapping(value="/login/02-findidpassword.do")
	public ModelAndView findid() {
		return new ModelAndView("login/02-findidpassword");
	}
	
	/* 인증번호 보내기 for 비번 action 페이지 */
	@RequestMapping(value="/login/goPwCode.do", method=RequestMethod.GET)
	public ModelAndView sendCode(Model model, 
			HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value="user_email", required=false) String user_email) throws IOException {
		
		System.out.println(user_email);
		String subject = "Cinephile 비밀번호 찾기 인증번호가 발송되었습니다.";
		
		//5자리의 인증번호 생성하기
		String content = "";
		
		for (int i=0; i<6; i++) {
			content += codeHelper.getInstance().random(0,9); 
		}
		
		Tcodes input = new Tcodes();
		input.setUser_email(user_email);
		input.setCode(content);
		
		
		/* tcodes 임시 테이블에 값넣기 , 메일 발송 처리 */
		try {
			//인증코드, 메일 임시 테이블에 저장
			tcodesService.addCode(input);
			
			//mailHelper.sendMail(user_email, subject, content);
			
		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.redirect(null, "메일 발송에 실패했습니다.");
		}
		
		int Pk;
		Pk = input.getId_code();
		System.out.println(input.toString());
		System.out.println("셍썽된 프라이뭐리"+Pk);
		
		Cookie cookie = new Cookie("codePk", String.valueOf(Pk)); //저장할 쿠키 객체 생성.
		
		cookie.setPath("/");	//쿠키의 유효 경로 --> 사이트 전역에 대한 설정
		cookie.setDomain("localhost");	//쿠키의 유효 도메인
		
		if(Pk == 0) {	//쿠키 시간을 설정하지 않으면 브라우저가 동작하는 동안 유효
			cookie.setMaxAge(0);	//쿠키 설정시간이 0이면 즉시 삭제된다.
		}else {
			cookie.setMaxAge(180);	//값이 있다면 3분 동안 쿠키 저장
		}
		
		response.addCookie(cookie); //쿠키 저장
//		model.addAttribute("user_email", user_email);
		
		
		
		
		//알림발송 (webHelper를 안쓰고) 실제로 쓰일 코드
//		PrintWriter out=response.getWriter();
//		
//		response.setContentType("text/html; charset=utf-8");
//		out.println("<script language='javascript'>");
//		out.println("alert('인증번호를 발송하였습니다.')");
//		out.println("</script>");
//		out.flush();
//		System.out.println(content);
//		/* 결과처리 */
//		return new ModelAndView("/account/03-emailCode");
		
		//결과처리
		return webHelper.redirect(contextPath + "/login/04-passwordemail.do?user_email="+user_email, "인증코드를 발송하였습니다." + content);
		
	}
	
	/* 인증번호 처리 */
	@RequestMapping(value="/login/04-passwordemail_ok.do", method=RequestMethod.GET)
	public ModelAndView checkCode(Model model, HttpServletRequest request,
			@RequestParam(value="user_email", required=false) String user_email,
			@RequestParam(value="code_check", required=false) String code_check) {
		System.out.println("okok"+user_email);
		//쿠키값을 저장할 문자열
		String getPk = null;
		
		//저장된 쿠키를 가져온다.
		Cookie[] cookies = request.getCookies();
		
		String value = null;
		//쿠키 목록이 있다면
		if(cookies != null) {
			//가져온 배열의 길이만큼 반복
			for (int i = 0; i < cookies.length; i++) {
				//i번째 쿠키의 이름을 취득한다.
				String cookieName = cookies[i].getName();
				
				//이름이 내가 원하는 값일 경우 값을 복사한다.
				if(cookieName.equals("codePk")) {
					//쿠키값을 취득한다.
					value = cookies[i].getValue();	
				}
			}
		}
		System.out.println(value);
		Tcodes input = new Tcodes();
		input.setId_code(Integer.parseInt(value));
		
		Tcodes output;
		
		/* tcodes 인증번호 확인 처리 */
		try {
			//pk값으로 인증번호 조회
			output = tcodesService.getCode(input);

		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.redirect(null, "인증번호를 다시 발급 받으세요");
		}

		System.out.println("발급 "+output.getCode());
		System.out.println("입력 "+code_check);
		
		if(output.getCode().equals(code_check)) {
			return webHelper.redirect(contextPath + "/login/05-newpassword.do?user_email="+user_email, null);
		}else {
			return webHelper.redirect(null, "인증번호가 일치하지 않습니다.");
		}
		
	}
	@RequestMapping(value="/login/setNewPw.do", method=RequestMethod.POST)
	public ModelAndView setNewPs(Model model,
			@RequestParam(value="user_email", required=false) String user_email,
			@RequestParam(value="user_pw", required=false) String user_pw) {
		System.out.println("뉴패실행");
		System.out.println(user_email);
		System.out.println(user_pw);
		
		Members input = new Members();
		input.setUser_email(user_email);
		input.setUser_pw(user_pw);
		
		
		
		/* tcodes 임시 테이블에 값넣기 , 메일 발송 처리 */
		try {
			//인증코드, 메일 임시 테이블에 저장
			membersService.newPw(input);
			
			//mailHelper.sendMail(user_email, subject, content);
			
		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.redirect(null, "비밀번호 수정 실패했습니다.");
		}
		
		return new ModelAndView("login/06-successpassword");
	}
	
	
	

}
