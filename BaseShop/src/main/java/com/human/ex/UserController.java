package com.human.ex;

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

import com.human.dto.UserDto;
import com.human.service.IUserService;

@Controller
public class UserController {

	@Inject
	private IUserService userService;

	@RequestMapping(value = "/user/insert", method = RequestMethod.GET)
	public String insert(@RequestParam("confirmpw") String confirmpw, UserDto dto, RedirectAttributes rttr, Model model)
			throws Exception {
		if (confirmpw.equals(dto.getU_password())) {
			System.out.println("인서트 진입 ㅅㅅ");
			userService.insert(dto);
			rttr.addAttribute("id", dto.getU_id());
			return "redirect:/user/join_pro";
		} else {
			model.addAttribute("msg", "비밀번호가 일치하지 않습니다.");
			return "user/join";
		}

	}

	@RequestMapping(value = "/user/join_pro", method = RequestMethod.GET)
	public void join_pro(@RequestParam("id") String id, Model model) throws Exception {
		
		model.addAttribute("id", id);
	
		
		
	}
	@RequestMapping(value = "/user/goComplete", method = RequestMethod.GET)
	public String move(@RequestParam("id") String id, Model model) throws Exception {
		System.out.println("세션 확인" + id);
		String page = "회원가입 완료 페이지";
		String msg = id+"님 환영합니다.";
		model.addAttribute("id", id);
		model.addAttribute("page", page);
		model.addAttribute("msg", msg);
		return "/user/complete";
	}

	@RequestMapping(value   = "/user/match", method = RequestMethod.GET)
	public String match(UserDto dto, Model model, RedirectAttributes rttr) throws Exception {
		System.out.println("로그인 아이디 확인" + dto.getU_id());
		System.out.println("비밀번호 아이디 확인" + dto.getU_password());
		String result = userService.match(dto);
		System.out.println("매치 결과 :" + result);
		if (result.equals("Success")) {
			String page = "로그인 페이지";
			String msg = dto.getU_id() + "님 환영합니다.";
			String userId = dto.getU_id();
			model.addAttribute("userId", userId);
			model.addAttribute("page", page);
			model.addAttribute("msg", msg);
			return "/user/complete";
		} else if (result.equals("Failure")) {
			String msg = "일치하는 아이디 혹은 비밀번호가 없습니다. 다시 입력해주세요";
			rttr.addFlashAttribute("msg", msg);
			return "redirect:/user/login";
		}
		return "/user/main";
	}

	@RequestMapping(value = "/user/complete", method = RequestMethod.GET)
	public void completeJoin( Model model) throws Exception {

	}

	@RequestMapping(value = "/user/index", method = RequestMethod.GET)
	public void index(@RequestParam("userId") String userId, Model model) throws Exception {
		model.addAttribute("userId", userId);
		
	}

	@RequestMapping(value = "/user/join", method = RequestMethod.GET)
	public void join(UserDto dto, Model model) throws Exception {

	}

	@RequestMapping(value = "/user/login", method = RequestMethod.GET)
	public String login(Model model) throws Exception {

		return "/user/login";
	}

	@RequestMapping(value = "/user/edit", method = RequestMethod.GET)
	public String edit(@RequestParam("userId") String id, Model model) throws Exception {

		model.addAttribute("u_id", id);
		return "/user/update";

	}

	@RequestMapping(value = "/user/update", method = RequestMethod.GET)
	public String update(@RequestParam("Btn") String btn, UserDto dto, Model model) throws Exception {
		UserDto originDto = userService.getInfo(dto.getU_id());
		if (btn.equals("수정")) {
			System.out.println("업데이트 유저 아이디 : " + dto.getU_id());
			dto.setU_name(dto.getU_name() != null ? dto.getU_name() : originDto.getU_name());
			dto.setU_gender(dto.getU_gender() != null ? dto.getU_gender() : originDto.getU_gender());
			dto.setU_birthday(dto.getU_birthday() != null ? dto.getU_birthday() : originDto.getU_birthday());
			dto.setU_email(dto.getU_email() != null ? dto.getU_email() : originDto.getU_email());
			dto.setU_phone(dto.getU_phone() != null ? dto.getU_phone() : originDto.getU_phone());
			dto.setU_address(dto.getU_address() != null ? dto.getU_address() : originDto.getU_address());
			userService.update(dto);
			String page = "회원정보 수정 완료";
			String msg = dto.getU_id() + "님이 다시 태어나셨습니다.";
			model.addAttribute("page", page);
			model.addAttribute("msg", msg);
			return "/user/complete";
		} else if (btn.equals("탈퇴")) {
			System.out.println("삭제 할 유저 아이디 : " + dto.getU_id());
			userService.delete(dto);
			String page = "회원정보 삭제 완료";
			String msg = dto.getU_id() + "님은 죽으셨습니다.";
			model.addAttribute("page", page);
			model.addAttribute("msg", msg);
			return "/user/complete";
		}
		return "/user/main";

	}

	@RequestMapping(value = "/user/cancle", method = RequestMethod.GET)
	public String cancle() throws Exception {

		return "/user/main";
	}

}
