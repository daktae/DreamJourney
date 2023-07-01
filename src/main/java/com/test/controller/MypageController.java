package com.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MypageController {
	
	@GetMapping("/mypage")
	private String mypage() {
		
		return "mypage/mypage";
	}
	
	@GetMapping("/mypage_reserve")
	private String mypage_reserve() {
		
		return "mypage/mypage_reserve";
	}
	
	@GetMapping("/mypage_reserve_view")
	private String mypage_reserve_view() {
		
		return "mypage/mypage_reserve_view";
	}
	
	@GetMapping("/mypage_bookmark")
	private String mypage_bookmark() {
		
		return "mypage/mypage_bookmark";
	}

}
