package study.spring.cinephile.controllers;


import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;
import study.spring.cinephile.helper.CalendarTime;
import study.spring.cinephile.helper.WebHelper;
import study.spring.cinephile.model.Movie;
import study.spring.cinephile.service.MovieService;

@Slf4j
@Controller
public class BoxofficeMovingController {
	
	//webHelper 주입
	@Autowired WebHelper webHelper;
	
	//Service패턴 구현체 주입
	@Autowired MovieService movieService;
	
	//상영예정작을 위한 현재날짜 계산 helper
	@Autowired CalendarTime calendarTime;
	
	//"/프로젝트이름" 에 해당하는 contextPath변수 주입
	@Value("#{servletContext.contextPath}") String contextPath;
	
	//현재날짜계산하기.
	
	
	//현재상영중 영화페이지
	@RequestMapping(value= "/movie/nowMoving.do", method= RequestMethod.GET)
	public ModelAndView nowMoving(Model model,
								@RequestParam(value="movielist", defaultValue="예매순")String movielist) {
		//System.out.println(movielist);
		//영화 데이터 조회하기
		Movie input = new Movie();
		
		//조회결과가 저장될 객체
		List<Movie> output = null;
		
		if( movielist.equals("예매순")) {
			try {
				
				output = movieService.getMovieBooking(input);
			} catch (Exception e) {
				return webHelper.redirect(null, e.getLocalizedMessage());
			}
			
			model.addAttribute("output", output);
			model.addAttribute("movielist", movielist);
		}
		
		else if( movielist.equals("평점순")) {
			try {
				
				output = movieService.getMovieStarInfo(input);
			} catch (Exception e) {
				return webHelper.redirect(null, e.getLocalizedMessage());
			}
			
			model.addAttribute("output", output);
			model.addAttribute("movielist", movielist);
		}
		
		else if( movielist.equals("관람객순")) {
			try {
				
				output = movieService.getMovieTodayAudience(input);
			} catch (Exception e) {
				return webHelper.redirect(null, e.getLocalizedMessage());
			}
			
			model.addAttribute("output", output);
			model.addAttribute("movielist", movielist);
		}
		
		else {
			try {
				output = movieService.getMovieBooking(input);
			} catch (Exception e) {
				return webHelper.redirect(null, e.getLocalizedMessage());
			}
			
			model.addAttribute("output", output);
			model.addAttribute("movielist", movielist);
		}
		
		return new ModelAndView("movie/nowMoving");
	}
		
	//상영예정작 영화페이지
	@RequestMapping(value="/movie/willMoving.do", method= RequestMethod.GET)
	public ModelAndView willMoving(Model model,
				@RequestParam(value="movielist", defaultValue="개봉일순")String movielist) {
		
		//영화 데이터 조회하기
				Movie input = new Movie();
				
				//조회결과가 저장될 객체
				List<Movie> output = null;
				
				//현재 날짜
				String today = calendarTime.cTime();
				//현재날짜의 정수형
				int tmp = Integer.parseInt(today);
				//System.out.println(tmp);
				
				
				//날짜를 절대값으로 받기
				//int dDayInt = Math.abs(tmp - tmp2);
				
				//view에 보여질 날짜를 정수형태로 변환
				//String dDay = Integer.toString(dDayInt);
				
				if( movielist.equals("개봉일순")) {
					try {
						
						output = movieService.getMovieOpeningDate(input);
					} catch (Exception e) {
						return webHelper.redirect(null, e.getLocalizedMessage());
					}
					
					model.addAttribute("output", output);
					model.addAttribute("movielist", movielist);
					model.addAttribute("tmp", tmp);
					
				}
				
				else if( movielist.equals("좋아요순")) {
					try {
						
						output = movieService.getMovieLikeCount(input);
					} catch (Exception e) {
						return webHelper.redirect(null, e.getLocalizedMessage());
					}
					
					model.addAttribute("output", output);
					model.addAttribute("movielist", movielist);
					model.addAttribute("tmp", tmp);
					
					
				}
				
				else {
					try {
						output = movieService.getMovieOpeningDate(input);
					} catch (Exception e) {
						return webHelper.redirect(null, e.getLocalizedMessage());
					}
					
					model.addAttribute("output", output);
					model.addAttribute("movielist", movielist);
					model.addAttribute("tmp", tmp);
					
				}
		
		return new ModelAndView("movie/willMoving");
	}
}
