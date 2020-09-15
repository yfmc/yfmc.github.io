package study.spring.cinephile.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MovieSearchController {
	// 영화검색페이지
	@RequestMapping(value = "movie/MovieSearch.do", method = RequestMethod.GET)
	public String MovieSearch(Model model, HttpServletRequest request, HttpServletResponse response) {
		return "movie/MovieSearch";
	}

	// 영화검색결과페이지
	@RequestMapping(value = "movie/MovieSearchResult.do", method = RequestMethod.GET)
	public String MovieSearchResult(Model model, HttpServletRequest request, HttpServletResponse response) {
		return "movie/MovieSearchResult";
	}

	// 영화상세페이지
	@RequestMapping(value = "movie/MovieContent.do", method = RequestMethod.GET)
	public String MovieContent(Model model, HttpServletRequest request, HttpServletResponse response) {
		return "movie/MovieContent";
	}
}
