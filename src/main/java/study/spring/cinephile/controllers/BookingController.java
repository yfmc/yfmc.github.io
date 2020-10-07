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
import study.spring.cinephile.model.Timetable;
import study.spring.cinephile.service.TheaterService;
import study.spring.cinephile.service.TimetableService;

@Controller
public class BookingController {
	@Autowired
	WebHelper webHelper;
	
	@Autowired
	TheaterService theaterService;
	
	@Autowired
	TimetableService timetableService;
	
	/* "/프로젝트이름"에 해당하는 ContextPath 변수 주입 */
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	/* 01) 상영시간 선택 페이지 */
	@RequestMapping(value="/bookingtime", method=RequestMethod.GET)
	public ModelAndView bookingTime(HttpServletRequest request, Model model,
			@RequestParam(value="provNo", defaultValue="0") int provNo,
			@RequestParam(value="theaterId", defaultValue="0") int theaterId,
			@RequestParam(value="scrnDay", required=false) String scrnDay,
			@RequestParam(value="movieId", defaultValue="0") int movieId,
			@RequestParam(value="timetableId", defaultValue="0") int timetableId) {
		
		/* 1) URL에 timetableId 파라미터가 없을 경우 기본적으로 서울 영화관 목록 노출 */
		if (timetableId==0) {
			// 데이터 설정
			Theater input=new Theater();
			input.setProvNo(10);
			
			// 빈 객체 준비
			List<Theater> output=null;
			
			try {
				// 결과 가져오기
				output=theaterService.getTheaterList(input);
			}
			catch (Exception e) {
				return webHelper.redirect(null, e.getLocalizedMessage());
			}
			
			// 로그인 여부 조회하여 결과 view 처리
			HttpSession session = request.getSession();
			Members mySession = (Members) session.getAttribute("loggedIn");
			
			if (mySession==null) {
				model.addAttribute("user", 0);
			}
			else {
				model.addAttribute("user", 1);
				model.addAttribute("membersId", mySession.getMembers_id());
			}
			
			// view 처리
			model.addAttribute("output", output);
			return new ModelAndView("booking/05-booking");
		}
		
		/* 2) 데이터 조회하기 */
		// 데이터 설정 & 빈 객체 준비
		// >> 1) 영화관 목록을 위한 데이터
		Theater input=new Theater();
		input.setProvNo(provNo);
		List<Theater> output=null;
		
		// >> 2) 영화 목록을 위한 데이터
		Timetable input2=new Timetable();
		input2.setTheaterId(theaterId);
		input2.setScrnDay(scrnDay);
		List<Timetable> output2=null;
		
		// >> 3) 상영시간표 목록을 위한 데이터
		Timetable input3=new Timetable();
		input3.setTheaterId(theaterId);
		input3.setScrnDay(scrnDay);
		input3.setMovieId(movieId);
		List<Timetable> output3=null;
		
		// >> 4) 상영시간표 단일행을 위한 데이터
		Timetable input4=new Timetable();
		input4.setTimetableId(timetableId);
		Timetable output4=null;
		
		try {
			// 결과 가져오기
			output=theaterService.getTheaterList(input);
			output2=timetableService.getMovieList(input2);
			output3=timetableService.getTimetableList(input3);
			output4=timetableService.getTimetableItem(input4);
		}
		catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/* 3) 로그인 여부 조회하여 결과 view 처리 */
		HttpSession session = request.getSession();
		Members mySession = (Members) session.getAttribute("loggedIn");
		
		if (mySession==null) {
			model.addAttribute("user", 0);
		}
		else {
			model.addAttribute("user", 1);
		}
		
		/* 4) view 처리 */
		model.addAttribute("output", output);
		model.addAttribute("output2", output2);
		model.addAttribute("output3", output3);
		model.addAttribute("output4", output4);
		return new ModelAndView("booking/05-booking");
	}
	
	/* 02) 좌석 선택 페이지 */
	@RequestMapping(value="/bookingseats", method=RequestMethod.GET)
	public String bookingSeats() {
		return "booking/02-booking_seats";
	}
	
	/* 03) 결제수단 선택 페이지 */
	@RequestMapping(value="/bookingpayment", method=RequestMethod.GET)
	public String bookingPayment() {
		return "booking/03-booking_payment";
	}
	
	/* 04) 예매완료 페이지 */
	@RequestMapping(value="/bookingconfirmed", method=RequestMethod.GET)
	public String bookingConfirmed() {
		return "booking/04-booking_confirmed";
	}
}
