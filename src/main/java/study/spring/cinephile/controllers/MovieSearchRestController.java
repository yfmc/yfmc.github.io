package study.spring.cinephile.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import study.spring.cinephile.helper.CalendarTime;
import study.spring.cinephile.helper.PageData;
import study.spring.cinephile.helper.RegexHelper;
import study.spring.cinephile.helper.WebHelper;
import study.spring.cinephile.model.Movie;
import study.spring.cinephile.service.MovieService;

@RestController
public class MovieSearchRestController {

	// webHelper 주입
	@Autowired
	WebHelper webHelper;

	@Autowired
	RegexHelper regexHelper;

	// Service패턴 구현체 주입
	@Autowired
	MovieService movieService;

	// 상영예정작을 위한 현재날짜 계산 helper
	@Autowired
	CalendarTime calendarTime;

	// "/프로젝트이름" 에 해당하는 contextPath변수 주입
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	/*
	 * 지금 restcontroller는 더보기 기능을 사용하지 않기 때문에 사용하지 않는 controller이므로 사용할때는 수정 필요
	 * 지금 restcontroller는 더보기 기능을 사용하지 않기 때문에 사용하지 않는 controller이므로 사용할때는 수정 필요
	 * 지금 restcontroller는 더보기 기능을 사용하지 않기 때문에 사용하지 않는 controller이므로 사용할때는 수정 필요
	 * 지금 restcontroller는 더보기 기능을 사용하지 않기 때문에 사용하지 않는 controller이므로 사용할때는 수정 필요
	 * 지금 restcontroller는 더보기 기능을 사용하지 않기 때문에 사용하지 않는 controller이므로 사용할때는 수정 필요
	 * */
	
	
	// 영화검색페이지
	@RequestMapping(value = "/movie", method = RequestMethod.GET)
	public Map<String, Object> MovieSearch(
			@RequestParam(value = "keyword", required = false) String keyword,
			@RequestParam(value = "page", defaultValue = "1") int nowPage) {

		// 페이지 구현에 필요한 변수값 생성
		int totalCount = 0;
		int listCount = 8;
		int pageCount = 5;

		// 영화 데이터 조회하기
		Movie input = new Movie();
		input.setTitle(keyword);

		// 조회결과가 저장될 객체
		List<Movie> output = null;
		PageData pageData = null;

		try {

			totalCount = movieService.getMovieCountOptionAll(input);
			pageData = new PageData(nowPage, totalCount, listCount, pageCount);

			Movie.setOffset(pageData.getOffset());
			Movie.setListCount(pageData.getListCount());

			output = movieService.getMovieSearchTitle(input);

		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}

		Map<String, Object> data = new HashMap<String, Object>();
		data.put("keyword", keyword);
		data.put("item", output);
		data.put("pageDate", pageData);
		data.put("totalCount", totalCount);
		System.out.println("==============");
		System.out.println(output);
		System.out.println("==============");
		return webHelper.getJsonData(data);
	}
}
