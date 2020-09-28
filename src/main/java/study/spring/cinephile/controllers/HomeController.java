package study.spring.cinephile.controllers;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;
import study.spring.cinephile.model.Faq;
import study.spring.cinephile.model.Notice;
import study.spring.cinephile.service.FaqService;
import study.spring.cinephile.service.NoticeService;

/**
 * Handles requests for the application home page.
 */
@Slf4j
@Controller
public class HomeController {
	
	@Autowired
	NoticeService noticeService;
	@Autowired
	FaqService faqService;
	
	//private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */

	@RequestMapping(value = {"/", "/index.do", "simple/home.do"}, method = {RequestMethod.GET, RequestMethod.POST})
	public String home(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		//logger.info("Welcome home! The client locale is {}.", locale);
		log.debug("Locale: " + locale.getLanguage());
		log.debug("Locale: " + locale.getCountry());
		log.debug("Locale: " + locale.getDisplayCountry());
		log.debug("Locale: " + locale.getDisplayCountry());
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "index";
	}
	
	/** 고객센터 홈 페이지 */
	@RequestMapping(value = "/support/support_home.do", method=RequestMethod.GET)
	public String support(Model model, HttpServletResponse response) {
		
		List<Notice> noticeList = null;
		List<Faq> faqList = null;
		
		try {
			noticeList = noticeService.getNoticeList_date(null);
			faqList = faqService.getFaqList_date(null);
		} catch (Exception e) { e.printStackTrace(); }
		
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("faqList", faqList);
		
		return "support/support_home";
	}
	
}
