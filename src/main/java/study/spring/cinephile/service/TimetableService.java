package study.spring.cinephile.service;

import java.util.List;

import study.spring.cinephile.model.Timetable;

public interface TimetableService {
	
	/**
	 * 특정 날짜, 극장에 상영 중인 영화 목록 조회
	 * @param Timetable input : 상영시간표 Beans
	 * @return 조회된 영화, 관람가 list
	 * @throws Exception
	 */
	public List<Timetable> getMovieList(Timetable input) throws Exception;
	
	/**
	 * 특정 날짜, 극장, 영화의 상영시간표 목록 조회
	 * @param Timetable input : 상영시간표 Beans
	 * @return 조회된 특정 영화의 상영시간표 list
	 * @throws Exception
	 */
	public List<Timetable> getTimetableList(Timetable input) throws Exception;
	
	/**
	 * 특정 날짜, 극장에 상영 중인 영화 개수 조회
	 * @param Timetable input : 상영시간표 Beans
	 * @return 상영 중인 영화 개수 int
	 * @throws Exception
	 */
	public int countMovie(Timetable input) throws Exception;
	
	/**
	 * 특정 날짜, 극장, 영화의 상영시간표 개수 조회
	 * @param Timetable input : 상영시간표 Beans
	 * @return 상영시간표 개수 int
	 * @throws Exception
	 */
	public int countTable(Timetable input) throws Exception;
	
	/**
	 * 상영시간표 단일행 조회
	 * @param Timetable input : 상영시간표 Beans
	 * @return 상영시간표 객체
	 * @throws Exception
	 */
	public Timetable getTimetableItem(Timetable input) throws Exception;
}
