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
import org.springframework.web.servlet.ModelAndView;

import study.spring.cinephile.service.ProvincialService;
import study.spring.cinephile.service.RentService;
import study.spring.cinephile.service.TheaterService;
import study.spring.cinephile.helper.RegexHelper;
import study.spring.cinephile.helper.WebHelper;
import study.spring.cinephile.model.Members;
import study.spring.cinephile.model.Provincial;
import study.spring.cinephile.model.Rent;
import study.spring.cinephile.model.Theater;

@Controller
public class RentController {
	
	@Autowired
	WebHelper webHelper;

	@Autowired
	RegexHelper regexHelper;
	
	@Autowired
	RentService rentService;
	
	@Autowired
	ProvincialService provincialService;
	
	@Autowired
	TheaterService theaterService;
	
	/** "/프로젝트 이름"에 해당하는 ContextPath 변수 주입 */
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	/** 목록 페이지 */
	@RequestMapping(value="/admin/admin_rent_list.do", method=RequestMethod.GET)
	public ModelAndView rentList(Model model) {
		
		return new ModelAndView("admin/admin_rent_list") ;
	}
	
	/** 상세 페이지 */
	@RequestMapping(value="/admin/admin_rent_detail.do", method=RequestMethod.GET)
	public ModelAndView rentDetail(Model model) {
		
		return new ModelAndView("admin/admin_rent_detail");
	}
	
	/** 작성 폼 페이지 */
	@RequestMapping(value="/support/rent.do", method=RequestMethod.GET)
	public ModelAndView rentWrite(Model model, HttpServletRequest request) {
		
		/** 데이터 조회 */
		List<Provincial> provList = null;
		List<Theater> theaterList = null;
		
		try {
			provList = provincialService.getProvincialList(null);
			theaterList = theaterService.getTheaterList(null);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		// 로그인시 회원 정보 가져오기0
				HttpSession session = request.getSession();
				Members mySession = (Members) session.getAttribute("loggedIn");
		
		if (mySession != null ) {
			model.addAttribute("my_session", mySession);
			model.addAttribute("provList", provList);
			model.addAttribute("theaterList", theaterList);
			
			return new ModelAndView("support/rent");
		} else {
			model.addAttribute("provList", provList);
			model.addAttribute("theaterList", theaterList);
			
			return new ModelAndView("support/rent");
		}
	}
	
	/** 작성 폼에 대한 action 페이지 */
	@RequestMapping(value="/support/rent_ok.do", method=RequestMethod.GET)
	public ModelAndView rent_ok(Model model,
			@RequestParam(value="theater_id", required = false) int theater_id,
			@RequestParam(value="rent_date", required = false) String rent_date,
			@RequestParam(value="rent_content", required = false) String rent_content,
			@RequestParam(value="user_name", required = false) String user_name,
			@RequestParam(value="birthdate", required = false) String birthdate,
			@RequestParam(value="tel", required = false) String tel,
			@RequestParam(value="email", required = false) String email) {
		System.out.println("데이터 입력 완료");
		
		/** 입력한 파라미터에 대한 유효성 검사 */
		if (theater_id == 0)					{ return webHelper.redirect(null, "지역을 선택하세요."); }
		if (rent_date.equals(""))			{ return webHelper.redirect(null, "극장을 선택하세요."); }
		if (rent_content.equals(""))		{ return webHelper.redirect(null, "대관날짜를 선택하세요."); }
		if (user_name.equals(""))			{ return webHelper.redirect(null, "이름을 입력하세요."); }
		if (birthdate.equals(""))			{ return webHelper.redirect(null, "이름을 입력하세요."); }
		if (tel.equals(""))						{ return webHelper.redirect(null, "연락처를 입력하세요."); }
		if (email.equals(""))				{ return webHelper.redirect(null, "이메일을 입력하세요."); }
		System.out.println("유효성검사 완료");
		
		/** 데이터 저장 */
		// 저장할 값 Beans에 담기
		Rent input = new Rent();
		input.setRent_date(rent_date);
		input.setRent_content(rent_content);
		input.setUser_name(user_name);
		input.setTel(tel);
		input.setEmail(email);
		System.out.println("데이터 저장 완료");
		
		Rent output = null;
		
		try {
			// 데이터 저장
			rentService.addRent(input);
			output = rentService.getRentItem(input);	
			
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		// 결과 확인을 위한 JSON 출력
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("item", output);
		
		/** 결과를 확인하기 위한 페이지 이동 */
		// 결과 확인을 위해 저장시 생성된 PK값을 상세 페이지로 전달
		String redirectUrl = contextPath + "/support/rent_complete.do";
		
		return webHelper.redirect(redirectUrl, "저장 완료");
	}
	
	/** 완료 페이지 */
	@RequestMapping(value="/support/rent_complete.do", method=RequestMethod.GET)
	public ModelAndView rentComplete(Model model) {
		
		return new ModelAndView("support/rent_complete");
	}
	
}
