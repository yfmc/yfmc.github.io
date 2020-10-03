package study.spring.cinephile.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import study.spring.cinephile.helper.CalendarTime;
import study.spring.cinephile.helper.PageData;
import study.spring.cinephile.helper.RegexHelper;
import study.spring.cinephile.helper.WebHelper;
import study.spring.cinephile.model.FavMovie;
import study.spring.cinephile.model.Members;
import study.spring.cinephile.model.Movie;
import study.spring.cinephile.model.StarComment;
import study.spring.cinephile.service.FavMovieService;
import study.spring.cinephile.service.MembersService;
import study.spring.cinephile.service.MovieService;

@RestController
public class MovieApiController {

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

	// 영화상세페이지 - 좋아요up
	@RequestMapping(value = "movie/MovieLikeUp", method = RequestMethod.POST)
	public Map<String, Object> MovieContentUp(HttpServletRequest request,
			@RequestParam(value = "title", required = false) String title,
			@RequestParam(value = "user_id", required = false) String user_id,
			@RequestParam(value = "movie_id", required = false) int movie_id,
			@RequestParam(value = "like_count", defaultValue = "0") int like_count,
			@RequestParam(value = "page", defaultValue = "1") int nowPage) {

		HttpSession session = request.getSession();
		Members mySession = (Members) session.getAttribute("loggedIn"); // 로그인세션을 가져옴

		int members_id = mySession.getMembers_id();

		////////////////////////////////////////////////////////
		Movie input = new Movie();

		like_count++;
		input.setMovie_id(movie_id);
		input.setLike_count(like_count);

		int output = 0;

		try {
			output = movieService.setMovieLikeUp(input, members_id);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}

		Map<String, Object> data = new HashMap<String, Object>();
		data.put("output", output);

		return webHelper.getJsonData(data);
	}

	// 영화상세페이지 - 좋아요down
	@RequestMapping(value = "movie/MovieLikeDown", method = RequestMethod.POST)
	public Map<String, Object> MovieContentDown(
			HttpServletRequest request,
			@RequestParam(value = "title", required = false) String title,
			@RequestParam(value = "user_id", required = false) String user_id,
			@RequestParam(value = "movie_id", required = false) int movie_id,
			@RequestParam(value = "like_count", defaultValue = "0") int like_count,
			@RequestParam(value="page", defaultValue="1") int nowPage) {

		HttpSession session = request.getSession();
		Members mySession = (Members) session.getAttribute("loggedIn"); // 로그인세션을 가져옴

		int members_id = mySession.getMembers_id();

		////////////////////////////////////////////////////////

		Movie input = new Movie();

		like_count--;
		input.setMovie_id(movie_id);
		input.setLike_count(like_count);

		int output = 0;

		try {
			output = movieService.setMovieLikeDown(input, members_id);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}

		Map<String, Object> data = new HashMap<String, Object>();
		data.put("output", output);

		return webHelper.getJsonData(data);
	}

	// 영화상세페이지 - 댓글
	@RequestMapping(value = "movie/addComment", method = RequestMethod.POST)
	public Map<String, Object> addComment(
			HttpServletRequest request,
			@RequestParam(value = "user_id", required = false) String user_id,
			@RequestParam(value = "movie_id", required = false) int movie_id,
			@RequestParam(value = "star_comment", defaultValue = "2") float star_comment,
			@RequestParam(value = "people_textarea", required = false) String people_textarea,
			@RequestParam(value="page", defaultValue="1") int nowPage) {

		HttpSession session = request.getSession();
		Members mySession = (Members) session.getAttribute("loggedIn"); // 로그인세션을 가져옴
		
		PageData pageData = null; 
		
		/** 1) 페이지 구현에 필요한 변수값 생성 */
        int totalCount = 0;              // 전체 게시글 수
        int listCount  = 8;             // 한 페이지당 표시할 목록 수
        int pageCount  = 5;              // 한 그룹당 표시할 페이지 번호 수
		
		// 회원 멤버와  가져오기
		int members_id = mySession.getMembers_id();

		StarComment input = new StarComment();
		input.setMembers_id(members_id);
		input.setUser_id(user_id);
		input.setMovie_id(movie_id);
		input.setStar_comment(star_comment);
		input.setComment(people_textarea);

		int insertComment = 0;

		try {
            // 전체 게시글 수 조회
            totalCount = movieService.getStarCommentCount(input);
            // 페이지 번호 계산 --> 계산결과를 로그로 출력될 것이다.
            pageData = new PageData(nowPage, totalCount, listCount, pageCount);

            // SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
            StarComment.setOffset(pageData.getOffset());
            StarComment.setListCount(pageData.getListCount());
            
			insertComment = movieService.setStarComment(input);

		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("insertComment", insertComment);
		////////////////////////////////////////////////////////
		return webHelper.getJsonData(data);
	}

	
	// 영화상세페이지 - 댓글
	@RequestMapping(value = "movie/deleteComment", method = RequestMethod.POST)
	public Map<String, Object> deleteComment(HttpServletRequest request,
			@RequestParam(value = "title", required = false) String title,
			@RequestParam(value = "user_id", required = false) String user_id,
			@RequestParam(value = "movie_id", required = false) int movie_id,
			@RequestParam(value = "like_count", defaultValue = "0") int like_count,
			@RequestParam(value = "star_comment", defaultValue = "0") float star_comment,
			@RequestParam(value = "comment", required = false) String comment,
			@RequestParam(value = "page", defaultValue = "1") int nowPage) {

		HttpSession session = request.getSession();
		Members mySession = (Members) session.getAttribute("loggedIn"); // 로그인세션을 가져옴

		// 회원 멤버와 회원 아이디 가져오기
		int members_id = mySession.getMembers_id();
		user_id = mySession.getUser_id();

		StarComment input = new StarComment();
		input.setMembers_id(members_id);
		input.setUser_id(user_id);
		input.setMovie_id(movie_id);
		input.setStar_comment(star_comment);
		input.setComment(comment);

		int deleteComment = 0;

		try {
			deleteComment = movieService.setDeleteStarComment(input, members_id);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("deleteComment", deleteComment);
		////////////////////////////////////////////////////////
		return webHelper.getJsonData(data);
	}
}
