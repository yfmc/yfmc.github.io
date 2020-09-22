package study.spring.cinephile.controllers;

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
	
	/* 지역별 극장정보 페이지 */
	@RequestMapping(value="/branch.do", method=RequestMethod.GET)
	public String branch() {
		return "branch/01-branch";
	}
	
	/* 극장정보 상세 페이지 */
	@RequestMapping(value="/branch", method=RequestMethod.GET)
	public ModelAndView info(Model model, @RequestParam (value="provNo", defaultValue="0") int provNo, @RequestParam(value="theaterId", defaultValue="0") int theaterId) {
		/* 1) 유효성 검사 */
		if (provNo==0 || theaterId==0) {
			return webHelper.redirect(null, "해당 극장이 없습니다");
		}
		
		/* 2) 데이터 조회하기 */
		Theater input=new Theater();
		input.setProvNo(provNo);
		input.setTheaterId(theaterId);
		Theater output=null;
		
		try {
			output=theaterService.getTheaterItem(input);
		}
		catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/* 3) View 처리 */
		model.addAttribute("output", output);
		return new ModelAndView("branch/02-branch");
		
	}
}
