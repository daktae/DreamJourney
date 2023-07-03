package com.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.test.service.MypageService;

@Controller
public class MypageController {

	@Autowired
	private MypageService service;
	
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

	// 수정 완료
	@PostMapping("/mypage/saveinfo")
	private String saveInfo() {
		return "redirect:/mypage/info";
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
	
	
	// 예약 목록
	@GetMapping("/mypage/mypage_reserve")
	private String mypage_reserve(Model model) {

		model.addAttribute("tlist", service.transList());
		
		return "mypage/mypage_reserve";
	}

	// 예약 상세
	@GetMapping("/mypage/mypage_reserve_view")
	private String mypage_reserve_view() {

		return "mypage/mypage_reserve_view";
	}

	// 즐겨찾기
	@GetMapping("/mypage/mypage_bookmark")
	private String mypage_bookmark(Model model) {

		model.addAttribute("list", service.bookmarkList());
		
		return "mypage/mypage_bookmark";
	}

	// 내 작성글
	@GetMapping("/mypage/mypage_write")
	private String mypage_write() {
	      
	      return "mypage/mypage_write";

	}
	
	//테스트
	@GetMapping("/mypage/mapmap")
	private String mapmap() {
	      
	      return "mypage/mapmap";

	}
	
}
