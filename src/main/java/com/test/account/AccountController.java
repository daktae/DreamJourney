package com.test.account;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AccountController {

	@GetMapping("/login")
	private String login() {
		
		return "/account/login";
	}
	@GetMapping("/register")
	private String register() {
		
		return "/account/register";
	}
	
}
