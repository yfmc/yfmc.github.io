package study.spring.cinephile.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MovieNewsController {
	// 영화소식페이지
	@RequestMapping(value = "movie/MovieNews1.do", method = RequestMethod.GET)
	public String MovieNews1(Model model, HttpServletRequest request, HttpServletResponse response) {
		return "movie/MovieNews1";
	}

	// 영화소식페이지
	@RequestMapping(value = "movie/MovieNews2.do", method = RequestMethod.GET)
	public String MovieNews2(Model model, HttpServletRequest request, HttpServletResponse response) {
		return "movie/MovieNews2";
	}

	// 영화소식페이지
	@RequestMapping(value = "movie/MovieNews3.do", method = RequestMethod.GET)
	public String MovieNews3(Model model, HttpServletRequest request, HttpServletResponse response) {
		return "movie/MovieNews3";
	}

	// 영화소식페이지
	@RequestMapping(value = "movie/MovieNews4.do", method = RequestMethod.GET)
	public String MovieNews4(Model model, HttpServletRequest request, HttpServletResponse response) {
		return "movie/MovieNews4";
	}

	// 영화소식페이지
	@RequestMapping(value = "movie/MovieNews5.do", method = RequestMethod.GET)
	public String MovieNews5(Model model, HttpServletRequest request, HttpServletResponse response) {
		return "movie/MovieNews5";
	}

	// 영화소식페이지
	@RequestMapping(value = "movie/MovieNews6.do", method = RequestMethod.GET)
	public String MovieNews6(Model model, HttpServletRequest request, HttpServletResponse response) {
		return "movie/MovieNews6";
	}

	// 영화소식페이지
	@RequestMapping(value = "movie/MovieNews7.do", method = RequestMethod.GET)
	public String MovieNews7(Model model, HttpServletRequest request, HttpServletResponse response) {
		return "movie/MovieNews7";
	}

}
