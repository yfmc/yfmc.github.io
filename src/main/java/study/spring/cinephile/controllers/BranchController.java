package study.spring.cinephile.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import study.spring.cinephile.helper.WebHelper;
import study.spring.cinephile.model.Theater;
import study.spring.cinephile.service.TheaterService;

@Controller
public class BranchController {
	@Autowired
	WebHelper webHelper;
	
	@Autowired
	TheaterService theaterService;
	
	/* "/프로젝트이름"에 해당하는 ContextPath 변수 주입 */
	@Value("#{servletContext.contextPath}")
	String contextPath;
		
	/* 극장정보 상세 페이지 */
	@RequestMapping(value={"/branch", "/timetable"}, method=RequestMethod.GET)
	public ModelAndView branch(Model model, @RequestParam (value="provNo", defaultValue="0") int provNo, @RequestParam(value="theaterId", defaultValue="0") int theaterId) {
		/* 1) URL get 파라미터가 없을 경우 default 페이지로 '롯데시네마 가산디지털' 설정 */
		if (provNo==0 || theaterId==0) {
			// 데이터 기본값으로 설정하기
			Theater df=new Theater();
			df.setProvNo(10);
			df.setTheaterId(1001);

			Theater output=null;
			List<Theater> output2=null;
			
			try {
				// 상세정보 가져오기
				output=theaterService.getTheaterItem(df);
				output2=theaterService.getTheaterList(df);
			}
			catch (Exception e) {
				return webHelper.redirect(null, e.getLocalizedMessage());
			}
			
			// view 처리
			model.addAttribute("output", output);
			model.addAttribute("output2", output2);
			return new ModelAndView("branch/01-branch");
		}
		
		/* 2) 데이터 조회하기 */
		Theater input=new Theater();
		input.setProvNo(provNo);
		input.setTheaterId(theaterId);
		Theater output=null;
		List<Theater> output2=null;
		
		try {
			output=theaterService.getTheaterItem(input);
			output2=theaterService.getTheaterList(input);
		}
		catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/* 3) View 처리 */
		model.addAttribute("output", output);
		model.addAttribute("output2", output2);
		return new ModelAndView("branch/01-branch");
		
	}
}
