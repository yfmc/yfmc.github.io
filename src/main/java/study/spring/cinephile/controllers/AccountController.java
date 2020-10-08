package study.spring.cinephile.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

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
import study.spring.cinephile.helper.RegexHelper;
import study.spring.cinephile.helper.WebHelper;
import study.spring.cinephile.model.Members;
import study.spring.cinephile.model.Tcodes;
import study.spring.cinephile.service.MembersService;
import study.spring.cinephile.service.TcodesService;



@Controller
public class AccountController {

	@Autowired
	WebHelper webHelper;
	
	@Autowired
	MembersService membersService;
	
	@Autowired
	TcodesService tcodesService;

	@Autowired
	RegexHelper regexHelper;
	
	@Autowired
	CodeHelper codeHelper;
	
	@Autowired
	MailHelper mailHelper;
	
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	
	
	@RequestMapping(value="/account/01-welcome.do")
	public ModelAndView welcome(Model model) {
		return new ModelAndView("account/01-welcome");
	}

	@RequestMapping(value="/account/02-putEmail.do")
	public ModelAndView putEmail(Model model) {

		return new ModelAndView("account/02-putEmail");
	}
	
	
	@RequestMapping(value="/account/03-emailCode.do")
	public ModelAndView sentCode(Model model,
			@RequestParam(value="user_email", required=false) String user_email) {
		model.addAttribute("user_email", user_email);
		
		return new ModelAndView("account/03-emailCode");
	}
	
	@RequestMapping(value="/account/04-Agree.do", method=RequestMethod.GET)
	public ModelAndView Agree(Model model,
			@RequestParam(value="user_email", required=false) String user_email) {
		model.addAttribute("user_email", user_email);
		
		return new ModelAndView("account/04-Agree");
	}
	
	@RequestMapping(value="/account/05-putMemInfo.do", method=RequestMethod.GET)
	public ModelAndView gogo(Model model,
			@RequestParam(value="user_email", required=false) String user_email,
			@RequestParam(value="agree", required=false) String agree) {
		model.addAttribute("user_email", user_email);
		
		return new ModelAndView("account/05-putMemInfo");
	}
	
	@RequestMapping(value="/account/06-Complete.do")
	public ModelAndView Complete(Model model) {

		return new ModelAndView("account/06-Complete");
	}
	
	
	

	
	/* 인증번호 메일보내기 action 페이지 */
	@RequestMapping(value="/account/02-sendCode", method=RequestMethod.GET)
	public ModelAndView sendCode(Model model, 
			HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value="user_email", required=false) String user_email) throws IOException {
		
		String subject = "Cinephile 회원가입 인증번호가 발송되었습니다.";
		
		//5자리의 인증번호 생성하기
		String content = "";
		
		for (int i=0; i<6; i++) {
			content += codeHelper.getInstance().random(0,9); 
		}
		
		Tcodes input = new Tcodes();
		input.setUser_email(user_email);
		input.setCode(content);
		
		Tcodes output = null;
		
		/* tcodes 임시 테이블에 값넣기 , 메일 발송 처리 */
		try {
			//인증코드, 메일 임시 테이블에 저장
			tcodesService.addCode(input);
			mailHelper.sendMail(user_email, subject, content);
		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.redirect(null, "메일 발송에 실패했습니다.");
		}
		
		int Pk;
		Pk = input.getId_code();
		
		Cookie cookie = new Cookie("codePk", String.valueOf(Pk)); //저장할 쿠키 객체 생성. //쿠키에는 텍스트 정보만 담을수 있다.
		
		cookie.setPath("/");	//쿠키의 유효 경로 --> 사이트 전역에 대한 설정
		cookie.setDomain("localhost");	//쿠키의 유효 도메인
		
		if(Pk == 0) {	//쿠키 시간을 설정하지 않으면 브라우저가 동작하는 동안 유효
			cookie.setMaxAge(0);	//쿠키 설정시간이 0이면 즉시 삭제된다.
		}else {
			cookie.setMaxAge(180);	//값이 있다면 3분 동안 쿠키 저장
		}
		
		response.addCookie(cookie); //쿠키 저장
		return webHelper.redirect(contextPath + "/account/03-emailCode.do?user_email="+user_email, "인증코드를 발송하였습니다." + content);
		
	}
	
//	/* 인증번호 처리 */
//	@RequestMapping(value="/account/03-emailCode_ok", method=RequestMethod.GET)
//	public ModelAndView checkCode(Model model, HttpServletRequest request,
//			@RequestParam(value="user_email", required=false) String user_email,
//			@RequestParam(value="code_check", required=false) String code_check) {
//		System.out.println(user_email);
//		//쿠키값을 저장할 문자열
//		String getPk = null;
//		
//		//저장된 쿠키를 가져온다.
//		Cookie[] cookies = request.getCookies();
//		
//		String value = null;
//		//쿠키 목록이 있다면
//		if(cookies != null) {
//			//가져온 배열의 길이만큼 반복
//			for (int i = 0; i < cookies.length; i++) {
//				//i번째 쿠키의 이름을 취득한다.
//				String cookieName = cookies[i].getName();
//				
//				//이름이 내가 원하는 값일 경우 값을 복사한다.
//				if(cookieName.equals("codePk")) {
//					//쿠키값을 취득한다.
//					value = cookies[i].getValue();	
//				}
//			}
//		}else {
//			return webHelper.redirect(null, "인증번호를 다시 발급 받으세요");
//		}
//		System.out.println(value);
//		Tcodes input = new Tcodes();
//		input.setId_code(Integer.parseInt(value));
//		
//		Tcodes output;
//		
//		/* tcodes 인증번호 확인 처리 */
//		try {
//			//pk값으로 인증번호 조회
//			output = tcodesService.getCode(input);
//
//		} catch (Exception e) {
//			e.printStackTrace();
//			return webHelper.redirect(null, "인증번호를 다시 발급 받으세요");
//		}
//
//		System.out.println("발급 "+output.getCode());
//		System.out.println("입력 "+code_check);
//		
//		if(output.getCode().equals(code_check)) {
//			return webHelper.redirect(contextPath + "/account/04-Agree.do?user_email=" + user_email, null);
//		}else {
//			
//			return webHelper.redirect(null, "인증번호가 일치하지 않습니다.");
//		}
//		
//	}
	
	/*회원가입*/
	@RequestMapping(value="/account/05-putMemInfo_ok.do", method=RequestMethod.POST)
	public ModelAndView addMembers(Model model,
			@RequestParam(value="user_id", required=false) String user_id,
			@RequestParam(value="user_pw", required=false) String user_pw,
			@RequestParam(value="user_name", required=false) String user_name,
			@RequestParam(value="birthdate", required=false) String birthdate,
			@RequestParam(value="gender", required=false) String gender,
			@RequestParam(value="user_email", required=false) String user_email,
			@RequestParam(value="phone", required=false) String phone,
			@RequestParam(value="postcode", required=false) String postcode,
			@RequestParam(value="addr", required=false) String addr,
			@RequestParam(value="addr_detail", required=false) String addr_detail,
			@RequestParam(value="is_out", defaultValue="N") String is_out){
		System.out.println("컨트롤뤄 실행 ");
		/* 1)사용자가 입력한 파라미터에 대한 유효성 검사 */
		//일반 문자열 입력 컬럼 --> String으로 파라미터가 선언되어 있는 겨우는 값이 입력되지 않으면 빈 문자열로 처리된다.
		if(user_id.equals(""))					{return webHelper.redirect(null, "아이디를 입력해주세요."); }		
		if(!regexHelper.isEngNum(user_id))		{return webHelper.redirect(null, "아이디는 숫자, 영문만 가능합니다."); }
		
		if(user_pw.equals(""))		{return webHelper.redirect(null, "비밀번호를 입력하세요."); }
		
		if(user_name.equals(""))		{return webHelper.redirect(null, "이름을 입력하세요."); }
		if(!regexHelper.isKor(user_name))		{return webHelper.redirect(null, "이름은 한글만 입력 가능합니다."); }
		System.out.println("컨트롤뤄 실행 2-1");
		if(birthdate.equals(""))		{return webHelper.redirect(null, "생년월일을 입력하세요."); }
		if(gender.equals(""))		{return webHelper.redirect(null, "성별을 체크해 주세요."); }
		if(phone.equals(""))		{return webHelper.redirect(null, "전화번호를 입력해주세요."); }
		if(postcode.equals(""))		{return webHelper.redirect(null, "우편번호를 선택해주세요."); }
		
		System.out.println("컨트롤뤄 실행2 ");
		
		
		/* 2) 데이터 저장하기 */
		Members input = new Members();
		input.setUser_id(user_id);
		input.setUser_pw(user_pw);
		input.setUser_name(user_name);
		input.setBirthdate(birthdate);
		input.setGender(gender);
		input.setUser_email(user_email);
		input.setPhone(phone);
		input.setPostcode(postcode);
		input.setAddr(addr);
		input.setAddr_detail(addr_detail);
		input.setIs_out("N");
		
		System.out.println("컨트롤뤄 실행3 ");
		//저장된 결과를 조회하기 위한 객체
		Members output = null;
		
		try {
			//데이터 저장
			//--> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 Pk갑이 저장된다.
			membersService.addMembers(input);
			System.out.println("컨트롤뤄 실행4 ");
			//데이터 조회
			output = membersService.getMembersItem(input);
		}catch(Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/* 3)결과를 확인하기 위한 JSON 출력 */
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("item", output);

		
		String redirectUrl = contextPath + "/account/06-Complete.do?members_id=" + input.getMembers_id();
		return webHelper.redirect(redirectUrl, null);
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
