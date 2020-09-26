package study.spring.cinephile.helper;

import java.text.SimpleDateFormat;
import java.util.Calendar;

public class CalendarTime {

	public String cTime(){

		String result = null;

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");

		Calendar c = Calendar.getInstance();

		result = sdf.format(c.getTime());

		return result;
	}

}