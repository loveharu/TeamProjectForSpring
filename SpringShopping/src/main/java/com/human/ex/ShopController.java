package com.human.ex;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.human.dao.IShopDao;
import com.human.dto.ShopDto;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ShopController {
	
	@Autowired
	private IShopDao service;
	
	private static final Logger logger = LoggerFactory.getLogger(ShopController.class);
	
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
//	@RequestMapping(value = "/update", method = RequestMethod.GET)
//	public String update(HumanDto humanDto) {
//		System.out.println(humanDto);
//		return "/update";
//	}
//	@RequestMapping(value = "/update", method = RequestMethod.POST)
//	public String updateDB(ShopDto shopDto,RedirectAttributes rttr) throws Exception{
//		service.update(shopDto);
//		rttr.addFlashAttribute("msg","success");
//		return "redirect:/selectAll";
//	}
//	@RequestMapping(value = "/initShop", method = RequestMethod.GET)
//	public String shop() throws Exception{
//	
//	
//		return "redirect:/products";
//	}
////	
//	@RequestMapping(value = "/delete", method = RequestMethod.GET)
//	public String delete(int id,RedirectAttributes rttr) throws Exception {
//		service.delete(id);
//		rttr.addFlashAttribute("msg","success");
//		return "/products";
//	}
//	
//	@RequestMapping(value = "/product", method = RequestMethod.GET)
//	public String selectName(int id,Model model) throws Exception {
//		model.addAttribute("dto", service.returnMatch(id) );
//		return "/products";
//	}
//	
//	@RequestMapping(value = "/products", method = RequestMethod.GET)
//	public String selectAll(Model model) throws Exception {
//		model.addAttribute("list", service.select() );
//		return "/products";
//	}
//	@RequestMapping(value = "/insert", method = RequestMethod.GET) //get post 주의!!
//	public String insert() {
//		
//		return "/insert";
//	}
//	@RequestMapping(value = "/insert", method = RequestMethod.POST)
//	public String insertDB(ShopDto shopDto,RedirectAttributes rttr) throws Exception{
//		service.insert(shopDto);
//		rttr.addFlashAttribute("msg","success");
//		return "redirect:/selectAll";
//	}
//	
//	
}




