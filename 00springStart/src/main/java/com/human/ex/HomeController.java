package com.human.ex;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.human.dto.HumanDto;

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
	
	@RequestMapping(value = "/quize/input", method = RequestMethod.GET)
	public String input(HttpServletRequest request, Model model)  {
		
		return "/quize/input";
	}
	@RequestMapping(value = "/quize/result", method = RequestMethod.GET)
	public String result(HttpServletRequest request, Model model)  {
		String id =request.getParameter("id");
		String pw = request.getParameter("pw");
		model.addAttribute("id",id);
		model.addAttribute("pw",pw);
		
		return "/quize/result";
	}
	
	@RequestMapping(value = "/board/form1", method = RequestMethod.GET)
	public String confirmId2(@RequestParam("id") String id,@RequestParam("pw") String pw, Model model)  {
		
		model.addAttribute("id",id);
		model.addAttribute("pw",pw);
		
		return "/board/form1";
	}
	@RequestMapping(value = "/board/form3", method = RequestMethod.GET)
	public String confirmId33(String id,String pw, Model model)  {
		
		model.addAttribute("id",id);
		model.addAttribute("pw",pw);
		
		return "/board/form1";
	}
	@RequestMapping(value = "/board/form4", method = RequestMethod.GET)
	public String form5(@ModelAttribute("newHuman") HumanDto humanDto)  {
		
		
		
		return "/board/form4";
	}
	@RequestMapping(value = "/board/form5", method = RequestMethod.GET)
	public String form4(HumanDto humanDto)  {
		
		
		
		return "/board/form4";
	}
	
	@RequestMapping(value = "myForm/input", method = RequestMethod.GET)
	public String myForm(Locale locale,Model model){
	
		
		
		return "/myForm/input";
	}
	
	@RequestMapping(value = "myForm/result", method = RequestMethod.GET)
	public String myForm(String id, Model model){
		model.addAttribute("getId",id);
		return "/myForm/result";
	}
	@RequestMapping(value = "myForm/input", method = RequestMethod.POST)
	public String myForm1(Locale locale,Model model){
	
		
		
		return "/myForm/input";
	}
	
	@RequestMapping(value = "myForm/result", method = RequestMethod.POST)
	public String myForm1(String id, Model model){
		model.addAttribute("postId",id);
		return "/myForm/result";
	}
}
