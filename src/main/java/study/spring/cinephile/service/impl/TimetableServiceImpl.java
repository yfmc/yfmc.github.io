package study.spring.cinephile.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import study.spring.cinephile.model.Timetable;
import study.spring.cinephile.service.TimetableService;

@Slf4j
@Service
public class TimetableServiceImpl implements TimetableService {

	/* MyBatis 세션 객체 주입 */
	@Autowired
	SqlSession sqlSession;
	
	/**
	 * 특정 날짜, 극장에 상영 중인 영화 목록 조회
	 * @param Timetable input : 상영시간표 Beans
	 * @return 조회된 영화, 관람가 list
	 * @throws Exception
	 */
	@Override
	public List<Timetable> getMovieList(Timetable input) throws Exception {
		List<Timetable> result=null;
		
		try {
			result=sqlSession.selectList("TimetableMapper.selectMovieList", input);
			
			if (result==null) {
				throw new NullPointerException("result=null");
			}
		}
		catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터가 없습니다");
		}
		catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다");
		}
		
		return result;
	}

	/**
	 * 특정 날짜, 극장, 영화의 상영시간표 목록 조회
	 * @param Timetable input : 상영시간표 Beans
	 * @return 조회된 특정 영화의 상영시간표 list
	 * @throws Exception
	 */
	@Override
	public List<Timetable> getTimetableList(Timetable input) throws Exception {
		List<Timetable> result=null;
		
		try {
			result=sqlSession.selectList("TimetableMapper.selectTimetableList", input);
			
			if (result==null) {
				throw new NullPointerException("result=null");
			}
		}
		catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터가 없습니다");
		}
		catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다");
		}
		
		return result;
	}

	/**
	 * 특정 날짜, 극장에 상영 중인 영화 개수 조회
	 * @param Timetable input : 상영시간표 Beans
	 * @return 상영 중인 영화 개수 int
	 * @throws Exception
	 */
	@Override
	public int countMovie(Timetable input) throws Exception {
		int result=0;
		
		try {
			result=sqlSession.selectOne("TimetableMapper.countMovie", input);
		}
		catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다");
		}
		
		return result;
	}

	/**
	 * 특정 날짜, 극장, 영화의 상영시간표 개수 조회
	 * @param Timetable input : 상영시간표 Beans
	 * @return 상영시간표 개수 int
	 * @throws Exception
	 */
	@Override
	public int countTable(Timetable input) throws Exception {
		int result=0;
		
		try {
			result=sqlSession.selectOne("TimetableMapper.countTable", input);
		}
		catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다");
		}
		
		return result;
	}
	
}
