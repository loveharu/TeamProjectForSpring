package com.human.ex;

import java.time.LocalDateTime;
import java.util.ArrayList;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.human.dto.ShopDto;
import com.human.dto.CartDto;
import com.human.dto.ResultCartDto;
import com.human.dto.UserDto;
import com.human.service.ICartService;
import com.human.service.IUserService;

@Controller
public class CartController {

	@Inject
	private ICartService cartService;

	@RequestMapping(value = "/cart/insert", method = RequestMethod.GET)
	public String insert(CartDto dto,RedirectAttributes rttr) throws Exception {
		dto.setOrderDate(LocalDateTime.now());
		cartService.addCart(dto);
		String userId= dto.getU_id();
		rttr.addAttribute("userId",userId);
		return "redirect:/shop/selectAll";
	}
	
	@RequestMapping(value = "/cart/select", method = RequestMethod.GET)
	public String select(Model model) throws Exception {
		 String u_id = (String) model.asMap().get("userId");
		ArrayList<CartDto> dtos = cartService.select(u_id);
		System.out.println("장바구니 목록 =====");
		for(CartDto dto1:dtos) {
			System.out.println(dto1.getU_id());
			System.out.println(dto1.getP_id());
		}
		model.addAttribute("dtos",dtos);
		model.addAttribute("userId",u_id);
		return "/cart/cart";
	}
	
	@RequestMapping(value = "/cart/delete", method = RequestMethod.GET)
	public String delete(@RequestParam("userId")String userId,@RequestParam("id")int id,Model model,RedirectAttributes rttr) throws Exception {
		 
		 cartService.delete(id);
		System.out.println("삭제중....");
		rttr.addFlashAttribute("userId",userId);
		return "redirect:/shop/selectAll";
	}
}
