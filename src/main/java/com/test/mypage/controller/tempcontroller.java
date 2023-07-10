package com.test.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class tempcontroller {
	//가입되면 메인으로
	@GetMapping("/board/share")
	private String share() {

	    return "/board/share";
	}
}
