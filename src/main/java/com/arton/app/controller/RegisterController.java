package com.arton.app.controller;

import com.arton.app.domain.UserDto;
import com.arton.app.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/register")
public class RegisterController {
	@Autowired
	RegisterService registerService;

	@GetMapping("/terms")
	public String termsForm() {
		return "terms";
	}

	@GetMapping("/join")
	public String registerForm() {
		return "register";
	}

	//	나중에 @Valid 써보기
	@PostMapping("/join")
	public String register(UserDto userDto, Model m) {
		System.out.println(userDto);
		if (registerService.join(userDto) != 1) {
			System.out.println(1);
			//			String msg = URLEncoder.encode("잘못된 입력입니다. 다시 입력해주세요", "utf-8");
			//			m.addAttribute("msg", msg);
			return "redirect:/register/join";
		}
		System.out.println(2);
		return "redirect:/login/login";
	}

	@PostMapping("/idCheck")
	@ResponseBody
	public int idCheck(@RequestParam("userId") String userId) {
		int cnt = registerService.idCheck(userId);
		return cnt;
	}
}

