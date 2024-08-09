package com.human.ex;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController {
	@RequestMapping("/board/view")
	public String view() {
		return "board/view";
	}
	@RequestMapping(value = "/board/form7", method = RequestMethod.GET)
	public String form6(String[] names,Model model) {
		
		model.addAttribute("names",names);
		
		return "board/form7";
	}

}
