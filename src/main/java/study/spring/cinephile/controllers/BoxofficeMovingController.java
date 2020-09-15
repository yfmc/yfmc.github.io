package study.spring.cinephile.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class BoxofficeMovingController {
	
	
	//현재상영중 영화페이지
	@RequestMapping(value= "movie/nowMoving.do", method= RequestMethod.GET)
	public String nowMoving(Model model, HttpServletRequest request, HttpServletResponse response) {
		return "movie/nowMoving";
	}
		
	//상영예정작 영화페이지
	@RequestMapping(value="/movie/willMoving.do", method= RequestMethod.GET)
	public String willMoving(Model model, HttpServletRequest request, HttpServletResponse response) {
		return "movie/willMoving";
	}
	
}
