package study.spring.cinephile.controllers;

import java.text.SimpleDateFormat;
import java.util.Date;
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
import study.spring.cinephile.model.Timetable;
import study.spring.cinephile.service.TheaterAddService;
import study.spring.cinephile.service.TheaterService;
import study.spring.cinephile.service.TimetableService;

@Controller
public class TheaterController {
	@Autowired
	WebHelper webHelper;
	
	@Autowired
	TheaterService theaterService;
	
	@Autowired
	TheaterAddService addService;
	
	@Autowired
	TimetableService timetableService;
	
	/* "/프로젝트이름"에 해당하는 ContextPath 변수 주입 */
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	/* 극장정보 상세 페이지 */
	@RequestMapping(value={"/branch", "/branch.do", "/timetable", "/timetable.do"}, method=RequestMethod.GET)
	public ModelAndView branch(HttpServletRequest request, Model model,
			@RequestParam (value="provNo", defaultValue="0") int provNo,
			@RequestParam(value="theaterId", defaultValue="0") int theaterId) {
		
		/* 1) URL get 파라미터가 없을 경우 default 페이지로 '롯데시네마 가산디지털' 설정 */
		if (provNo==0 || theaterId==0) {
			// 데이터 기본값으로 설정하기
			Theater input=new Theater();
			input.setProvNo(10);
			input.setTheaterId(1001);
			
			// 오늘 날짜로 scrnDay를 set하기 위해 Date 객체로 오늘 날짜 추출
			Date today=new Date();
			SimpleDateFormat formatType = new SimpleDateFormat("yyyy-MM-dd");
			String scrnDay=formatType.format(today);
			
			Timetable input2=new Timetable();
			input2.setTheaterId(1001);
			input2.setScrnDay(scrnDay);
			
			// 빈 객체 준비
			Theater output=null;
			List<Theater> output2=null;
			List<Timetable> output4=null;
			int output5=0;					// 상영 중인 영화 개수
			
			try {
				// 상세정보 가져오기 (롯데시네마 가산디지털 & 서울 극장 목록)
				output=theaterService.getTheaterItem(input);
				output2=theaterService.getTheaterList(input);
				output4=timetableService.getMovieList(input2);
				output5=timetableService.countMovie(input2);
			}
			catch (Exception e) {
				return webHelper.redirect(null, e.getLocalizedMessage());
			}
			
			// 로그인 한 회원 Primary Key와 자주 가는 영화관 등록 여부 전송
			HttpSession session = request.getSession();
			Members mySession = (Members) session.getAttribute("loggedIn");
			
			int output3=0;
			
			TheaterAdd count=new TheaterAdd();
			count.setTheaterId(input.getTheaterId());
			
			if (mySession==null) {
				model.addAttribute("user", 0);
			}
			else {
				model.addAttribute("user", mySession.getMembers_id());
				count.setMembersId(mySession.getMembers_id());
			}
			
			try {
				output3=addService.countFavTheater(count);
			}
			catch (Exception e) {
				return webHelper.redirect(null, e.getLocalizedMessage());
			}

			// view 처리
			model.addAttribute("output", output);
			model.addAttribute("output2", output2);
			model.addAttribute("favCount", output3);
			model.addAttribute("movieList", output4);
			model.addAttribute("movieCount", output5);
			return new ModelAndView("branch/01-branch");
		}
		
		/* 2) 데이터 조회하기 */
		Theater input=new Theater();
		input.setProvNo(provNo);
		input.setTheaterId(theaterId);
		
		// 오늘 날짜로 scrnDay를 set하기 위해 Date 객체로 오늘 날짜 추출
		Date today=new Date();
		SimpleDateFormat formatType = new SimpleDateFormat("yyyy-MM-dd");
		String scrnDay=formatType.format(today);
		
		Timetable input2=new Timetable();
		input2.setTheaterId(theaterId);
		input2.setScrnDay(scrnDay);
		
		// 빈 객체 준비
		Theater output=null;
		List<Theater> output2=null;
		List<Timetable> output4=null;
		int output5=0;					// 상영 중인 영화 개수
		
		try {
			output=theaterService.getTheaterItem(input);
			output2=theaterService.getTheaterList(input);
			output4=timetableService.getMovieList(input2);
			output5=timetableService.countMovie(input2);
		}
		catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/* 3) 로그인 한 회원 Primary Key와 자주 가는 영화관 등록 여부 전송 */
		
		// 세션에서 회원정보를 받아 Members 객체에 주입
		HttpSession session = request.getSession();
		Members mySession = (Members) session.getAttribute("loggedIn");
		
		// 자주 가는 영화관 여부를 나타낼 변수
		int output3=0;
		
		// 등록 여부를 조회할 영화관 set
		TheaterAdd count=new TheaterAdd();
		count.setTheaterId(theaterId);
		
		// 로그인 정보가 없으면 0 전송
		if (mySession==null) {
			model.addAttribute("user", 0);
		}
		// 로그인 정보가 있으면 회원 PK 전송
		else {
			model.addAttribute("user", mySession.getMembers_id());
			count.setMembersId(mySession.getMembers_id());
		}
				
		try {
			output3=addService.countFavTheater(count);
		}
		catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/* 4) View 처리 */
		model.addAttribute("output", output);
		model.addAttribute("output2", output2);
		model.addAttribute("favCount", output3);
		model.addAttribute("movieList", output4);
		model.addAttribute("movieCount", output5);
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
		
		/* 3) 확인 창 띄우고 해당 영화관 상세정보 페이지로 이동 */
		Theater gb=new Theater();
		gb.setTheaterId(theaterId);
		Theater output=null;
		try {
			output=theaterService.getTheaterItem(gb);
		}
		catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		String redirectUrl=contextPath+"/branch?provNo="+output.getProvNo()+"&theaterId="+output.getTheaterId();
		return webHelper.redirect(redirectUrl, "자주 가는 영화관에 추가되었습니다");

	}
}
