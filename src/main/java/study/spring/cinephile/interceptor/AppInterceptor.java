package study.spring.cinephile.interceptor;

import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import lombok.extern.slf4j.Slf4j;
import study.spring.cinephile.helper.WebHelper;
import study.spring.cinephile.model.Members;

@Slf4j
public class AppInterceptor extends HandlerInterceptorAdapter {
	long startTime=0, endTime=0;
	
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	@Autowired
	WebHelper webHelper;
	/**
	 * Controller 실행 요청 전에 수행되는 메서드
	 * 클라이언트의 요청을 컨트롤러에 전달하기 전에 호출됨
	 * return 값으로 boolean 값은 전달하는데 false인 경우 controller를 실행 시키지 않고 요청을 종료
	 * 보통 이곳에서 각종 체크작업과 로그를 기록하는 작업을 진행
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//log.debug("AppInterceptor.preHandle 실행됨");
		
		//WebHelper의 초기화는 모든 컨트롤러마다 개별적으로 호출되어야 한다.
		//Interceptor에서 이 작업을 수행하면 모든 메서드마다 수행하는 동일 작업을 일괄 처리 할 수 있다.
		webHelper.init(request, response);
		
		// 컨트롤러 실행 직전에 현재 시각을 저장
		startTime = System.currentTimeMillis();
		
		/** 1) 클라이언트의 요청 정보 확인 */
		// 현재 URL 획득
		String url = request.getRequestURL().toString();
		
		// GET방식인지, POST방식인지 조회
		String methodName = request.getMethod();
		
		// URL에서 "?" 이후에 전달괴는 GET파라미터 문자열을 모두 가져옴
		String queryString = request.getQueryString();
		
		System.out.println(queryString);
		// 가져온 값이 있다면 URL과 결합하여 완전한 URL을 구성
		if (queryString != null	) {
			url = url + "?" + queryString;
		}
		
		// 획득한 정보를 로그로 표시
		log.debug(String.format("[%s] %s", methodName, url));
		
		
		
		/** 로그인 안하고 접근하면 안되는 페이지들에 접근했을때를 처리하는 코드 */
		/*
		 * 로그인 안 했을때 접근하면 안되는 페이지들의 url을 배열로 만든다.
		 * 모든 페이지 이동시 실행되며,
		 * 현재 url과 배열의 url들을 비교해 일치하는게 있는지 찾는다.
		 * 현재 세션이 없고(로그인이 안돼있고), 접근하면 안되는 페이지에 접근하려 하면
		 * 접근불가 처리한다
		 * 
		 */
		String[] forbidden_url= {"http://localhost:8080/cinephile/mypage/mypagemain.do",
				"http://localhost:8080/cinephile/mypage/bookinglist.do",
				"http://localhost:8080/cinephile/mypage/choicelist.do",
				"http://localhost:8080/cinephile/mypage/changeinfo-(1).do",
				"http://localhost:8080/cinephile/mypage/changeinfo-(2).do",
				"http://localhost:8080/cinephile/mypage/changeinfo-(3).do",
				"http://localhost:8080/cinephile/mypage/withdrawal-(1).do",
				"http://localhost:8080/cinephile/mypage/withdrawal_ok.do",
				"http://localhost:8080/cinephile/mypage/inquirylist.do",
				"http://localhost:8080/cinephile/mypage/inquirypost.do"};
		
		int count=0;
		
		HttpSession session=request.getSession();
		Members mySession=(Members)session.getAttribute("loggedIn");
		if(mySession==null) {
			for(int i=0;i<forbidden_url.length;i++) {
				if(url.equals(forbidden_url[i])){
					count++;
				}
			}
		}
		
		if(count!=0) {
			String redirectUrl = contextPath + "/login/01-login.do";
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('로그인하세요.'); location.href='"+redirectUrl+"';</script>");
			writer.close();

			response.sendRedirect(redirectUrl);
		}

		
		
		
		/** 2) 클라이언트가 전달한 모든 파라미터 확인 */
		Map<String, String[]> params = request.getParameterMap();
		
		for (String key : params.keySet()) {
			String[] value = params.get(key);
			log.debug(String.format("(p) <-- %s = %s", key, String.join(",", value)));
		}
		
		/** 3) 클라이언트가 머물렀던 이전 페이지와 이전 페이지에 머문 시간 확인 */
		// 이전에 머물렀던 페이지
		String referer = request.getHeader("referer");
		
		// 이전 종료 시간이 0보다 크다면 새로운 시작시간과의 차이는 이전페이지에서 머문시간을 의미
		if (referer != null && endTime > 0) {
			log.debug(String.format("-REFERER : time = %d, url = %s", startTime - endTime, referer));
		}
		
		return super.preHandle(request, response, handler);
	}
	
	/**
	 * view 단으로 forward 되기 전에 수행
	 * 컨트롤러 로직이 실행된 이후 호출됨
	 * 컨르롤러 단에서 에러 발생 시 해당 메서드는 수행되지 않는다
	 * request로 넘어온 데이터 가공 시 많이 사용됨
	 */
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		//log.debug("AppInterceptor.postHandle 실행");
		
		// 컨트롤러 종료시의 시각을 가져옴
		endTime = System.currentTimeMillis();
		
		// 시작시간과 종료시간 사이의 차이를 구하면 페이지의 실행 시간을 구할 수 있음.
		log.debug(String.format("running time : %d(ms)\n", endTime-startTime));
		
		super.postHandle(request, response, handler, modelAndView);
	}
	
	/**
	 * 컨트롤러 종료 후 view가 정상적으로 렌더링 된 후 제일 마지막에 실행되는 메서드
	 */
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		//log.debug("AppInterceptor.afterCompletion 실행");
		super.afterCompletion(request, response, handler, ex);
	}
	
	
	/**
	 * Servlet 3.0부터 비동기 요청이 가능해짐에 따라 비동기 요청 시
	 * PostHandle와 afterCompletion메서드를 수행하지 않고 이 메서드를 수행하게 됨
	 * 거의 사용 하지 않음.
	 */
	@Override
	public void afterConcurrentHandlingStarted(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//log.debug("AppInterceptor.afterConcurrentHandlingStarted 실행");
		super.afterConcurrentHandlingStarted(request, response, handler);
	}

	
		
}
