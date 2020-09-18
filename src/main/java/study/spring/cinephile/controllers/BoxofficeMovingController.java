package study.spring.cinephile.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;
import study.spring.cinephile.helper.WebHelper;
import study.spring.cinephile.service.MovieService;

@Slf4j
@Controller
public class BoxofficeMovingController {
	
	//webHelper 주입
	@Autowired WebHelper webHelper;
	
	//Service패턴 구현체 주입
	@Autowired MovieService movieService;
	
	//"/프로젝트이름" 에 해당하는 contextPath변수 주입
	@Value("#{servletContext.contextPath}") String contextPath;
	
	//현재상영중 영화페이지
	@RequestMapping(value= "/movie/nowMoving.do", method= RequestMethod.GET)
	public String nowMoving(Model model, HttpServletRequest request, HttpServletResponse response) {
		return "movie/nowMoving";
	}
		
	//상영예정작 영화페이지
	@RequestMapping(value="/movie/willMoving.do", method= RequestMethod.GET)
	public String willMoving(Model model, HttpServletRequest request, HttpServletResponse response) {
		return "movie/willMoving";
	}
	
}
