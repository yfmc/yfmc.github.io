package study.spring.cinephile.controllers;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;
import retrofit2.Call;
import retrofit2.Retrofit;
import study.spring.cinephile.helper.RetrofitHelper;
import study.spring.cinephile.helper.WebHelper;
import study.spring.cinephile.model.SearchDailyBoxOfficeList;
import study.spring.cinephile.model.SearchDailyBoxOfficeList.BoxOfficeResult.DailyBoxOfficeList;
import study.spring.cinephile.model.SearchWeeklyBoxOfficeList;
import study.spring.cinephile.model.SearchWeeklyBoxOfficeList.BoxOfficeResult;
import study.spring.cinephile.model.SearchWeeklyBoxOfficeList.BoxOfficeResult.WeeklyBoxOfficeList;
import study.spring.cinephile.service.ApiKobisService;

@Slf4j
@Controller
public class StatisticsController {
	//영화통계페이지
			@Autowired
			WebHelper webHelper;
			
			@Autowired
			RetrofitHelper retrofitHelper;
			
			@RequestMapping(value="movie/Statistics.do", method= RequestMethod.GET)
			public ModelAndView statistics(Model model, @RequestParam(required=false) String date,
														@RequestParam(value="radio", required=false)String radio,
														@RequestParam(value="radio", required=false)String showRange) {
				
				//API연동객체생성
				Retrofit retrofit = retrofitHelper.getRetrofit(ApiKobisService.BASE_URL);
				
				//service객체를 생성, 구현체는 retrofit이 자동으로 생성해준다.
				ApiKobisService apiKobisService = retrofit.create(ApiKobisService.class);
				
				//검색 파라미터 처리
				if(date == null) {
					Calendar c = Calendar.getInstance();
					c.add(Calendar.DAY_OF_MONTH, -1);
					
					date = String.format("%04d-%02d-%02d", c.get(Calendar.YEAR), c.get(Calendar.MONTH)+1, c.get(Calendar.DAY_OF_MONTH));
					
				}
				
				//영화 진흥원에 api 요청
				String targetDt = date.replace("-", "");
				//String showRange2 = showRange;
				
				int tmp = Integer.parseInt(targetDt);
				int tmp2 = tmp-7;
				
				String targetDt2 = Integer.toString(tmp2);
				
				//영화진흥원 openApi를 통해 검색결과 반영하기
				Call<SearchDailyBoxOfficeList> call = apiKobisService.getSearchDailyBoxOfficeList(targetDt);
				SearchDailyBoxOfficeList searchDailyBoxOfficeList = null;
				
				//영화진흥원 openApi를 통해 검색결과 반영하기
				Call<SearchWeeklyBoxOfficeList> call2 = apiKobisService.getSearchWeeklyBoxOfficeList(targetDt2);
				SearchWeeklyBoxOfficeList searchWeeklyBoxOfficeList = null;
				
				//Call<SearchWeeklyBoxOfficeList> call3 = apiKobisService.getSearchWeeklyBoxOfficerange(showRange);
				//SearchWeeklyBoxOfficeList searchWeeklyBoxOfficeListrange = null;
				
				try {
					searchDailyBoxOfficeList = call.execute().body();
				}catch(Exception e) {
					e.printStackTrace();
				}
				
				try {
					searchWeeklyBoxOfficeList = call2.execute().body();
				}catch(Exception e) {
					e.printStackTrace();
				}
				
				//try {
				//	searchWeeklyBoxOfficeListrange = call3.execute().body();
			//	}catch(Exception e) {
			//		e.printStackTrace();
			//	}
				
				//변수명이 너무길어 별도의 참조변수 생성
				List<DailyBoxOfficeList> list = null;
				
				if(searchDailyBoxOfficeList != null) {
					list = searchDailyBoxOfficeList.getBoxOfficeResult().getDailyBoxOfficeList();
				}
				//그래프 출력을 위한js코드에서 사용할 문자열 만들기
				int size = list.size();
				String[] audiCnt = new String[size];
				String[] movieNm = new String[size];
				
				for(int i=0; i<size; i++) {
					DailyBoxOfficeList item = list.get(i);
					movieNm[i] = "'"+item.getMovieNm()+"'";
					audiCnt[i] = String.valueOf(item.getAudiCnt());
				}
				
				//변수명이 너무길어 별도의 참조변수 생성
				List<WeeklyBoxOfficeList> list2 = null;
				
						
				if(searchWeeklyBoxOfficeList != null) {
					list2 = searchWeeklyBoxOfficeList.getBoxOfficeResult().getWeeklyBoxOfficeList();
				}
				
			//	List<BoxOfficeResult> list3 = null;
			//	if(searchWeeklyBoxOfficeListrange != null) {
			//		list3 = searchWeeklyBoxOfficeListrange.getBoxOfficeResult();
			//	}
				
				//그래프 출력을 위한js코드에서 사용할 문자열 만들기
				int size2 = list2.size();
				String[] audiCnt2 = new String[size2];
				String[] movieNm2 = new String[size2];
						
				for(int i=0; i<size2; i++) {
					WeeklyBoxOfficeList item2 = list2.get(i);
					movieNm2[i] = "'"+item2.getMovieNm()+"'";
					audiCnt2[i] = String.valueOf(item2.getAudiCnt());
				}
				
				String movieNmStr = String.join(",", movieNm);
				String audiCntStr = String.join(",", audiCnt);
				
				String movieNmStr2 = String.join(",", movieNm2);
				String audiCntStr2 = String.join(",", audiCnt2);
				
				//View처리
				model.addAttribute("radio", radio);
				
				model.addAttribute("date", date);
				model.addAttribute("targetDt", targetDt);
				model.addAttribute("list", list);
				model.addAttribute("movieNmStr",movieNmStr);
				model.addAttribute("audiCntStr",audiCntStr);
				
				model.addAttribute("list2", list2);
				model.addAttribute("targetDt2", targetDt2);
				model.addAttribute("movieNmStr2",movieNmStr2);
				model.addAttribute("audiCntStr2",audiCntStr2);
				//model.addAttribute("showRange2", showRange2);
				
				
			return new ModelAndView("movie/Statistics");
			}
}
