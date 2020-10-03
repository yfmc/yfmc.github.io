package study.spring.cinephile.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import study.spring.cinephile.helper.CalendarTime;
import study.spring.cinephile.helper.PageData;
import study.spring.cinephile.helper.RegexHelper;
import study.spring.cinephile.helper.WebHelper;
import study.spring.cinephile.model.FavMovie;
import study.spring.cinephile.model.Members;
import study.spring.cinephile.model.Movie;
import study.spring.cinephile.model.Notice;
import study.spring.cinephile.model.StarComment;
import study.spring.cinephile.service.FavMovieService;
import study.spring.cinephile.service.MembersService;
import study.spring.cinephile.service.MovieService;

@Controller
public class MovieSearchController {

	// webHelper 주입
	@Autowired
	WebHelper webHelper;

	@Autowired
	RegexHelper regexHelper;

	// Service패턴 구현체 주입
	@Autowired
	MovieService movieService;

	// 좋아요영화 서비스 주입
	@Autowired
	FavMovieService favMovieService;
	
	// 회원서비스 주입
	@Autowired
	MembersService membersService;

	// 상영예정작을 위한 현재날짜 계산 helper
	@Autowired
	CalendarTime calendarTime;

	// "/프로젝트이름" 에 해당하는 contextPath변수 주입
	@Value("#{servletContext.contextPath}")
	String contextPath;

	// 영화검색페이지
	@RequestMapping(value = "movie/MovieSearch.do", method = RequestMethod.GET)
	public ModelAndView MovieSearch(Model model, @RequestParam(value = "keyword", required = false) String keyword,
			@RequestParam(value = "choose", defaultValue = "") String choose,
			@RequestParam(value = "genre", defaultValue = "") String genre,
			@RequestParam(value = "nation", defaultValue = "") String nation,
			@RequestParam(value = "made_year", defaultValue = "2010") String made_year,
			@RequestParam(value = "page", defaultValue = "1") int nowPage) {

		// 페이지 구현에 필요한 변수값 생성
		int totalCount = 0;
		int listCount = 8;
		int pageCount = 5;

		// 영화 데이터 조회하기
		Movie input = new Movie();

		// 조회결과가 저장될 객체
		List<Movie> output = null;
		PageData pageData = null;

		System.out.println(choose);
		System.out.println(genre);
		System.out.println(nation);
		System.out.println(made_year);

		// 영화검색조건 중에서 영화명을 선택했을 경우
		if (choose.equals("moviename")) {

			input.setTitle(keyword);
			input.setMovie_genre(genre);
			input.setGenreList(genre);
			input.setMovie_nation(nation);
			input.setnationList(nation);
			input.setMovie_made_year(made_year);
			try {
				totalCount = movieService.getMovieCountTitle(input);
				pageData = new PageData(nowPage, totalCount, listCount, pageCount);

				Movie.setOffset(pageData.getOffset());
				Movie.setListCount(pageData.getListCount());

				output = movieService.getMovieSearchTitle(input);

			} catch (Exception e) {
				return webHelper.redirect(null, e.getLocalizedMessage());
			}

		}
		// 영화검색조건 중에서 배우명을 선택했을 경우
		else if (choose.equals("actor")) {

			input.setMovie_actor(keyword);
			input.setMovie_genre(genre);
			input.setGenreList(genre);
			input.setMovie_nation(nation);
			input.setnationList(nation);
			input.setMovie_made_year(made_year);

			try {
				totalCount = movieService.getMovieCountActor(input);
				pageData = new PageData(nowPage, totalCount, listCount, pageCount);

				Movie.setOffset(pageData.getOffset());
				Movie.setListCount(pageData.getListCount());

				output = movieService.getMovieSearchActor(input);

			} catch (Exception e) {
				return webHelper.redirect(null, e.getLocalizedMessage());
			}
		}
		// 영화검색조건 중에서 감독명을 선택했을 경우
		else if (choose.equals("director")) {

			input.setMovie_director(keyword);
			input.setMovie_genre(genre);
			input.setGenreList(genre);
			input.setMovie_nation(nation);
			input.setnationList(nation);
			input.setMovie_made_year(made_year);

			try {
				totalCount = movieService.getMovieCountDirector(input);
				pageData = new PageData(nowPage, totalCount, listCount, pageCount);

				Movie.setOffset(pageData.getOffset());
				Movie.setListCount(pageData.getListCount());

				output = movieService.getMovieSearchDirector(input);

			} catch (Exception e) {
				return webHelper.redirect(null, e.getLocalizedMessage());
			}
		}
		// 전체선택을 했을 경우
		else if (choose.equals("alloption")) {

			input.setTitle(keyword);
			input.setMovie_actor(keyword);
			input.setMovie_director(keyword);
			input.setMovie_genre(genre);
			input.setGenreList(genre);
			input.setMovie_nation(nation);
			input.setnationList(nation);
			input.setMovie_made_year(made_year);

			try {
				totalCount = movieService.getMovieCountOptionAll(input);
				pageData = new PageData(nowPage, totalCount, listCount, pageCount);

				Movie.setOffset(pageData.getOffset());
				Movie.setListCount(pageData.getListCount());

				output = movieService.getMovieSearchOptionAll(input);

			} catch (Exception e) {
				return webHelper.redirect(null, e.getLocalizedMessage());
			}
		}

		model.addAttribute("keyword", keyword);
		model.addAttribute("output", output);
		model.addAttribute("pageData", pageData);
		model.addAttribute("totalCount", totalCount);
		return new ModelAndView("movie/MovieSearch");
	}

	// 영화상세페이지
	@RequestMapping(value = "movie/MovieContent.do", method = RequestMethod.GET)
	public ModelAndView MovieContent(
			Model model, HttpServletRequest request,
			@RequestParam(value = "movie_id", required = false) int movie_id,
			@RequestParam(value = "title", required = false) String title,
			@RequestParam(value = "user_id", required = false) String user_id,
			@RequestParam(value = "like_count", defaultValue = "0") int like_count,
			@RequestParam(value="page", defaultValue="1") int nowPage) {
		
		HttpSession session = request.getSession();
		Members mySession = (Members) session.getAttribute("loggedIn"); // 로그인세션을 가져옴
		
		boolean isUserExist;
		int members_id = 0;
		if(mySession == null) {
			user_id = "";
			isUserExist = false;
		} else {
			user_id = mySession.getUser_id();
			members_id = mySession.getMembers_id();
			isUserExist = true;
		}
		
		/** 1) 페이지 구현에 필요한 변수값 생성 */
        int totalCount = 0;              // 전체 게시글 수
        int listCount  = 8;             // 한 페이지당 표시할 목록 수
        int pageCount  = 5;              // 한 그룹당 표시할 페이지 번호 수
        
        PageData pageData = null; 
		////////////////////////////////////////////////////////
		Movie input = new Movie();
		StarComment input2 = new StarComment();
		

		input.setMovie_id(movie_id);
		input.setTitle(title);

		Movie output = null;
		List<StarComment> output2 = null;

		input2.setMovie_id(movie_id);	

		try {
            // 전체 게시글 수 조회
            totalCount = movieService.getStarCommentCount(input2);
            pageData = new PageData(nowPage, totalCount, listCount, pageCount);

            // SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
            StarComment.setOffset(pageData.getOffset());
            StarComment.setListCount(pageData.getListCount());
            
			output = movieService.getMovieItem(input);
			output2 = movieService.getStarComment(input2);
			
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		boolean isLike = false;
		boolean isComment = false;
		StarComment myStarComment = null;
		
		if (isUserExist) {
			
			try {
				isLike = movieService.getMovieItemLike(input, members_id);
			} catch (Exception e) {
				e.printStackTrace();
			}
			try {
				myStarComment = movieService.getMovieMyStarComment(input, members_id);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			if(myStarComment != null) {
				isComment = true;
				
				model.addAttribute("my",myStarComment);
			}
		}
		
		model.addAttribute("output", output);
		model.addAttribute("output2", output2);
		model.addAttribute("user_id",user_id);
		model.addAttribute("pageData", pageData);
		
		model.addAttribute("isLike", isLike);
		model.addAttribute("isComment", isComment);
		return new ModelAndView("movie/MovieContent");
	}
}
