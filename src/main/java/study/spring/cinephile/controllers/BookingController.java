package study.spring.cinephile.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import study.spring.cinephile.helper.WebHelper;

@Controller
public class BookingController {
	@Autowired
	WebHelper webHelper;
	
	/* "/프로젝트이름"에 해당하는 ContextPath 변수 주입 */
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	/* 01) 상영시간 선택 페이지 */
	@RequestMapping(value="/booking/01-booking_time.do", method=RequestMethod.GET)
	public String bookingTime() {
		return "booking/01-booking_time";
	}
	
	/* 02) 좌석 선택 페이지 */
	@RequestMapping(value="/booking/02-booking_seats.do", method=RequestMethod.GET)
	public String bookingSeats() {
		return "booking/02-booking_seats";
	}
	
	/* 03) 결제수단 선택 페이지 */
	@RequestMapping(value="/booking/03-booking_payment.do", method=RequestMethod.GET)
	public String bookingPayment() {
		return "booking/03-booking_payment";
	}
	
	/* 04) 예매완료 페이지 */
	@RequestMapping(value="/booking/04-booking_confirmed.do", method=RequestMethod.GET)
	public String bookingConfirmed() {
		return "booking/04-booking_confirmed";
	}

	/* 극장별 상영시간표 페이지 */
	@RequestMapping(value="timetable.do", method=RequestMethod.GET)
	public String timetable() {
		return "booking/05-timetable";
	}
}
