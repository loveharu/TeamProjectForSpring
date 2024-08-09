package com.human.ex;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.human.dto.ShopDto;
import com.human.service.IShopService;

@Controller
public class ShopController {

	@Inject
	private IShopService shopService;
	
	@RequestMapping(value = "/shop/selectMenu", method = RequestMethod.GET)
	public String selectMenu(@RequestParam("userId") String userId,@RequestParam("Btn") String name, Model model, RedirectAttributes rttr) throws Exception {
		System.out.println("메뉴 선택 작업");
		if (name.equals("상품등록")) {
			model.addAttribute("userId",userId);
			return "/shop/add";
		} else if (name.equals("상품편집")) {
			ArrayList<ShopDto> dtos = shopService.selectAll();
			for (ShopDto dto : dtos) {
				System.out.println(dto.getProduct_name());
			}
			model.addAttribute("userId",userId);
			model.addAttribute("dtos", dtos);
			return "/shop/editProducts";
		} else if(name.equals("장바구니")) {
			rttr.addFlashAttribute("userId",userId);
			return "redirect:/cart/select";
		}
		return "/shop/selectAll";
	}

	@RequestMapping(value = "/shop/insert", method = RequestMethod.GET)
	public String insert(@RequestParam("userId")String userId,ShopDto dto, RedirectAttributes rttr) throws Exception {
		int category = dto.getCategory_id();
		switch (category) {
		 case 1:
             dto.setProduct_image("/ex/resources/berry.jpg");
             break;
         case 2:
             dto.setProduct_image("/ex/resources/drink.jpg");
             break;
         case 3:
             dto.setProduct_image("/ex/resources/maka.jpg");
             break;
         case 4:
             dto.setProduct_image("/ex/resources/cake.jpg");
             break;
         default:
             dto.setProduct_image("/ex/resources/Strawberry.jpg");
		}

		System.out.println("insert db...");
		shopService.insert(dto);
		rttr.addFlashAttribute("userId", userId);
		
		return "redirect:/shop/selectAll";

	}

	@RequestMapping(value = "/shop/selectAll", method = RequestMethod.GET)
	public void home(@RequestParam(value = "userId", required = false)String userId,Model model) throws Exception {
		System.out.println("se" + "lectAll");
		List<ShopDto> dto = shopService.selectAll();
		for(ShopDto dto1:dto) {
			System.out.println("이미지 확인" +dto1.getProduct_image());
			System.out.println("이미지 확인" +dto1.getProduct_name());
		}
		if(model.asMap().get("userId")!= null) {
			userId=(String)model.asMap().get("userId");
			System.out.println("리다이렉트 변수 전달 받음 ");
			model.addAttribute("userId",userId);
		}
		else if(userId!=null)
			model.addAttribute("userId",userId);
		
		model.addAttribute("list", dto);
	}

	@RequestMapping(value = "/shop/product", method = RequestMethod.GET)
	public String select(@RequestParam("id") int id, Model model) throws Exception {
		System.out.println("selectDetails.....");
		ShopDto dto = shopService.productInfo(id);
		System.out.println(dto.getProduct_name());
		model.addAttribute("dto", dto);
		return "/shop/product";

	}

	@RequestMapping(value = "/shop/update", method = RequestMethod.POST)
	public String update(@RequestParam("category_id") int id,ShopDto dto, Model model) throws Exception {
		System.out.println("update.....");
		dto.setCategory_id(id);
		System.out.println("업뎃" + dto.getCategory_id());
		dto.setProduct_image("null");
		System.out.println(dto);
		shopService.update(dto);
		model.addAttribute("list", dto);
		return "redirect:/shop/selectAll";

	}

	@RequestMapping(value = "/shop/edit", method = RequestMethod.GET)
	public String edit(@RequestParam("userId")String userId,@RequestParam("Btn") String BtnName, @RequestParam("id") int id, Model model,RedirectAttributes rttr) throws Exception {
		System.out.println("print edit Page...");
		ShopDto dto = shopService.edit(id);
		model.addAttribute("dto", dto);
		if (BtnName.equals("수정")) {
			return "/shop/update";
		} else if (BtnName.equals("삭제")) {
			System.out.println("delete working ...." + id);
			shopService.delete(id);
			rttr.addFlashAttribute("userId",userId);
			return "redirect:/shop/selectAll";
		} 
		return "shop/selectAll";

	}



}
