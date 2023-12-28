package com.ogae.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {
	@GetMapping("/main.do")
	public String mainView() {
		return "main";
	}
}
