package study.spring.cinephile.controllers;

import java.util.List;

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

import study.spring.cinephile.helper.WebHelper;
import study.spring.cinephile.model.Members;
import study.spring.cinephile.model.Theater;
import study.spring.cinephile.model.TheaterAdd;
import study.spring.cinephile.service.TheaterAddService;
import study.spring.cinephile.service.TheaterService;

@Controller
public class TheaterController {
	@Autowired
	WebHelper webHelper;
	
	@Autowired
	TheaterService theaterService;
	
	@Autowired
	TheaterAddService addService;
	
	/* "/프로젝트이름"에 해당하는 ContextPath 변수 주입 */
	@Value("#{servletContext.contextPath}")
	String contextPath;
		
	/* 극장정보 상세 페이지 */
	@RequestMapping(value={"/branch", "/timetable"}, method=RequestMethod.GET)
	public ModelAndView branch(HttpServletRequest request, Model model, @RequestParam (value="provNo", defaultValue="0") int provNo, @RequestParam(value="theaterId", defaultValue="0") int theaterId) {
		/* 1) URL get 파라미터가 없을 경우 default 페이지로 '롯데시네마 가산디지털' 설정 */
		if (provNo==0 || theaterId==0) {
			// 데이터 기본값으로 설정하기
			Theater df=new Theater();
			df.setProvNo(10);
			df.setTheaterId(1001);
			
			Theater output=null;
			List<Theater> output2=null;
			
			try {
				// 상세정보 가져오기 (롯데시네마 가산디지털 & 서울 극장 목록)
				output=theaterService.getTheaterItem(df);
				output2=theaterService.getTheaterList(df);
			}
			catch (Exception e) {
				return webHelper.redirect(null, e.getLocalizedMessage());
			}
			
			// 로그인 한 회원 Primary Key를 전송
			HttpSession session = request.getSession();
			Members mySession = (Members) session.getAttribute("loggedIn");
			if (mySession==null) {
				model.addAttribute("user", 0);
			}
			else {
				model.addAttribute("user", mySession.getMembers_id());
			}
			
			// view 처리
			model.addAttribute("output", output);
			model.addAttribute("output2", output2);
			return new ModelAndView("branch/01-branch");
		}
		
		/* 2) 데이터 조회하기 */
		Theater input=new Theater();
		input.setProvNo(provNo);
		input.setTheaterId(theaterId);
		Theater output=null;
		List<Theater> output2=null;
		
		try {
			output=theaterService.getTheaterItem(input);
			output2=theaterService.getTheaterList(input);
		}
		catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/* 3) 로그인 한 회원 Primary Key를 전송 */
		HttpSession session = request.getSession();
		Members mySession = (Members) session.getAttribute("loggedIn");
		if (mySession==null) {
			model.addAttribute("user", 0);
		}
		else {
			model.addAttribute("user", mySession.getMembers_id());
		}
		
		/* 4) View 처리 */
		model.addAttribute("output", output);
		model.addAttribute("output2", output2);
		return new ModelAndView("branch/01-branch");		
	}
	
	/* 자주 가는 영화관 등록 action */
	@RequestMapping(value="/branch/add_ok.do", method=RequestMethod.POST)
	public ModelAndView add_ok(Model model, @RequestParam(value="theater_id", defaultValue="0") int theaterId, @RequestParam(value="members_id", defaultValue="0") int membersId) {
		/* 1) 유효성 검사 */
		if (theaterId==0) {
			return webHelper.redirect(null, "등록할 극장이 없습니다");
		}
		if (membersId==0) {
			return webHelper.redirect(null, "로그인 하셔야 이용할 수 있습니다");
		}
		
		/* 2) 데이터 저장하기 */
		TheaterAdd input=new TheaterAdd();
		input.setTheaterId(theaterId);
		input.setMembersId(membersId);
		
		try {
			addService.addTheater(input);
		}
		catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/* 3) 확인 창 띄우고 페이지는 제자리 */
		Theater theater=new Theater();
		theater.setTheaterId(theaterId);
		String redirectUrl=contextPath+"/branch?provNo="+theater.getProvNo()+"&theaterId="+input.getTheaterId();
		return webHelper.redirect(redirectUrl, "자주 가는 영화관에 추가되었습니다");
		
	}
}
