package study.spring.cinephile.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import study.spring.cinephile.helper.WebHelper;

@Controller
public class AccountController {

	@Autowired
	WebHelper webHelper;

	@RequestMapping(value="/account/01-welcome.do")
	public ModelAndView welcome(Model model) {
		return new ModelAndView("account/01-welcome");
	}

	@RequestMapping(value="/account/02-putEmail.do")
	public ModelAndView putEmail(Model model) {

		return new ModelAndView("account/02-putEmail");
	}


}
