package study.spring.cinephile.controllers;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class RentController {
	
	// 입력페이지
	@RequestMapping(value="/support/rent.do", method=RequestMethod.GET)
	public String qna(Model model, HttpServletResponse response) {
				
		return "support/rent";
	}
	
	// 완료 페이지
	@RequestMapping(value="/support/rent_complete.do", method=RequestMethod.GET)
	public String qna_complete(Model model, HttpServletResponse response) {
				
		return "support/rent_complete";
	}
}
