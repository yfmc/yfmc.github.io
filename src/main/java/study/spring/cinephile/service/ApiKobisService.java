package study.spring.cinephile.service;

import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Query;
import study.spring.cinephile.model.SearchDailyBoxOfficeList;
import study.spring.cinephile.model.SearchWeeklyBoxOfficeList;

public interface ApiKobisService {
public static final String BASE_URL = "http://www.kobis.or.kr";
	
	@GET("/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=2b1cdc092447d60ec9545657d90b3aaa")
	Call<SearchDailyBoxOfficeList> getSearchDailyBoxOfficeList(@Query("targetDt") String targetDt);
	
	@GET("/kobisopenapi/webservice/rest/boxoffice/searchWeeklyBoxOfficeList.json?key=2b1cdc092447d60ec9545657d90b3aaa&weekGb=0")
	Call<SearchWeeklyBoxOfficeList> getSearchWeeklyBoxOfficeList(@Query("targetDt") String targetDt);
	
	//@GET("/kobisopenapi/webservice/rest/boxoffice/searchWeeklyBoxOfficeList.json?key=2b1cdc092447d60ec9545657d90b3aaa&weekGb=0")
	//Call<SearchWeeklyBoxOfficeList> getSearchWeeklyBoxOfficerange(@Query("showRange") String showRange);
}
