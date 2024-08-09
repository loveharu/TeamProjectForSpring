package com.human.ex;

import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ResourceController {
	
	@RequestMapping(value = "myresource/res", method = RequestMethod.GET)
	public String myForm1(String id, Model model){
		
		return "myresource/res";
	}
}
