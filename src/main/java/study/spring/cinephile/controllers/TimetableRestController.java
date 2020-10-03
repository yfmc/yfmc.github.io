package study.spring.cinephile.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import study.spring.cinephile.helper.WebHelper;
import study.spring.cinephile.model.Timetable;
import study.spring.cinephile.service.TimetableService;

@RestController
public class TimetableRestController {
	/* WebHelper 주입 */
	@Autowired
	WebHelper webHelper;
	
	/* Service 패턴 구현체 주입 */
	@Autowired
	TimetableService timetableService;
	
	/* 목록 페이지 1 : 특정 날짜, 지점에 상영 중인 영화 목록 & 개수 */
	@RequestMapping(value="/timetablejson1", method=RequestMethod.GET)
	public Map<String, Object> movie_list(
			// 검색어1 : 극장번호
			@RequestParam(value="theaterId", defaultValue="1001") int theaterId,
			// 검색어2 : 상영날짜
			@RequestParam(value="scrnDay", required=false) String scrnDay) {
		
		/* 1) 데이터 조회하기 */
		// 조회에 필요한 조건값(검색어)을 Beans에 담는다
		Timetable input=new Timetable();
		input.setTheaterId(theaterId);
		input.setScrnDay(scrnDay);
		
		// 해당 극장, 날짜에 상영 중인 영화 목록이 저장될 객체
		List<Timetable> output=null;
		// 영화 개수가 저장될 객체
		int output2=0;
		
		try {
			// 데이터 조회하기1 (영화 목록)
			output=timetableService.getMovieList(input);
			output2=timetableService.countMovie(input);
		}
		catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		
		/* 2) JSON 출력하기 */
		Map<String, Object> data=new HashMap<String, Object>();
		data.put("theaterId", theaterId);
		data.put("scrnDay", scrnDay);
		data.put("movieList", output);
		data.put("count", output2);
		
		/* 각 영화에 대한 상영시간표 조회 : 영화 개수만큼 반복 */
		for (int i=0; i<output2; i++) {
			/* 데이터 조회하기2 (상영시간표 목록) */
			// 필요한 조건값을 Beans에 담는다
			Timetable input2=new Timetable();
			input2.setTheaterId(input.getTheaterId());
			input2.setScrnDay(input.getScrnDay());
			input2.setMovieId(output.get(i).getMovieId());
			
			// 영화 별 상영시간표 결과가 저장될 객체
			List<Timetable> output3=null;
			// 영화 당 상영시간표 개수가 저장될 객체
			int output4=0;
			
			try {
				// 데이터 조회하기
				output3=timetableService.getTimetableList(input2);
				output4=timetableService.countTable(input2);
			}
			catch (Exception e) {
				return webHelper.getJsonError(e.getLocalizedMessage());
			}
			
			/* JSON 출력하기 */
			data.put("table"+input2.getMovieId(), output3);
			data.put("count"+input2.getMovieId(), output4);
		}
		
		return webHelper.getJsonData(data);
		
	}
	
	@RequestMapping(value="/timetablejson2", method=RequestMethod.GET)
	/* 목록 페이지 2 : 특정 날짜, 지점에서 상영 중인 특정 영화의 상영시간표 목록 */
	public Map<String, Object> timetable_list(
			// 검색어1 : 극장번호
			@RequestParam(value="theaterId", defaultValue="1001") int theaterId,
			// 검색어2 : 상영날짜
			@RequestParam(value="scrnDay", required=false) String scrnDay,
			// 검색어3 : 영화번호
			@RequestParam(value="movieId", defaultValue="1") int movieId) {
		
		/* 1) 데이터 조회하기 */
		// 조회에 필요한 조건값(검색어)을 Beans에 담는다
		Timetable input=new Timetable();
		input.setTheaterId(theaterId);
		input.setScrnDay(scrnDay);
		input.setMovieId(movieId);
		
		// 조회 결과가 저장될 객체
		List<Timetable> output=null;
		int output2=0;
				
		try {
			// 데이터 조회하기
			output=timetableService.getTimetableList(input);
			output2=timetableService.countTable(input);
		}
		catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
				
		/* 2) JSON 출력하기 */
		Map<String, Object> data=new HashMap<String, Object>();
		data.put("theaterId", theaterId);
		data.put("scrnDay", scrnDay);
		data.put("movieId", movieId);
		data.put("tableList", output);
		data.put("count", output2);
				
		return webHelper.getJsonData(data);
	}
}
