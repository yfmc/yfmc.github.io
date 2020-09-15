package study.spring.cinephile.controllers;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class NoticeController {
	
	/** 목록페이지 */
	@RequestMapping(value = "/support/notice_list.do", method=RequestMethod.GET)
	public String notice(Model model, HttpServletResponse response) {
		return "support/notice_list";
	}
	
	
}
