package com.human.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.user.dto.UserDto;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

@Controller
public class newDirect {
	@InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }
	//사용자에게 아이디를 입력받아 id가 hi면 ok 아니면 fail.jsp
	@RequestMapping(value = "/redirect/input", method = RequestMethod.GET)
	public String test(Model model) {
		
		
		return "redirect/input";
			
	}
	@RequestMapping(value = "/redirect/result", method = RequestMethod.GET)
	public String testResult(String id,Model model) {
		
		if(id.equals("hi")) {
			return "redirect:/redirect/ok";
		}
		
		return "redirect:/redirect/fail";
	}
	@RequestMapping(value = "/redirect/fail", method = RequestMethod.GET)
	public String testFail(String id,Model model) {
	
		return "redirect/fail";
			
	}
	@RequestMapping(value = "/redirect/ok", method = RequestMethod.GET)
	public String testOk(String id,Model model) {
	
		return "redirect/ok";
			
	}
	@RequestMapping(value = "/userInput/userInput", method = RequestMethod.POST)
	public String userInput(Model model) {
	
		return "userInput/userInput";
			
	}
	@RequestMapping(value = "/userInput/userInput", method = RequestMethod.GET)
	public String input(Model model) {
	
		return "userInput/userInput";
			
	}
	
	@RequestMapping(value = "/userInput/getResult", method = RequestMethod.GET)
	public String resultGet(@ModelAttribute("user") UserDto userDto) {
		
		
		return "userInput/getResult";
			
	}
	@RequestMapping(value = "/userInput/postResult", method = RequestMethod.POST)
	public String resultPost(@ModelAttribute("user") UserDto userDto) {
		
		return "userInput/postResult";
			
	}
}
