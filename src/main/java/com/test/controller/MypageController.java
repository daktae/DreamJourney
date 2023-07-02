package com.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MypageController {
	
	@GetMapping("/mypage")
	private String mypage() {
		return "mypage/mypage";
	}	
	
	// 회원정보
	@GetMapping("/mypage/info")
	private String info() {
		return "mypage/info";
	}
	
	// 회원정보 수정
	@GetMapping("/mypage/editinfo")
	private String editinfo() {
		return "mypage/editinfo";
	}
	
	// 내 여행
	@GetMapping("/mypage/journey")
	private String journey() {
		return "mypage/journey";
	}
	
	// 내 여행 등록
	@GetMapping("/mypage/addjourney")
	private String addjourney() {
		return "mypage/addjourney";
	}
	
	// 내 여행 상세보기
	@GetMapping("/mypage/viewjourney")
	private String viewjourney() {
		return "mypage/viewjourney";
	}
	
	// 내 리뷰
	@GetMapping("/mypage/review")
	private String review() {
		return "mypage/review";
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
