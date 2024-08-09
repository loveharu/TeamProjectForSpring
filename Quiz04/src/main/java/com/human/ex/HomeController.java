package com.human.ex;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value = "/my", method = RequestMethod.GET)
	public String home2(Model model) {
		model.addAttribute("myString", "helloWorld");
		return "home2";
	}	
	@RequestMapping(value = "/board/confirmId", method = RequestMethod.GET)
	public String confirmId(HttpServletRequest request, Model model)  {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		model.addAttribute("id",id);
		model.addAttribute("pw",pw);
		
		
		return "board/confirmId";
	}
	@RequestMapping(value = "/quize/input", method = RequestMethod.GET)
	public String input(HttpServletRequest request, Model model)  {
		
		return "/quize/input";
	}
	
}
