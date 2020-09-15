package study.spring.cinephile.controllers;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class QnaController {
	
	// 입력페이지
	@RequestMapping(value="/support/qna.do", method=RequestMethod.GET)
	public String qna(Model model, HttpServletResponse response) {
			
		return "support/qna";
	}
	
	// 완료 페이지
		@RequestMapping(value="/support/qna_complete.do", method=RequestMethod.GET)
		public String qna_complete(Model model, HttpServletResponse response) {
					
			return "support/qna_complete";
		}
}
