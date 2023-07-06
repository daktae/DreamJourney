package com.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.test.domain.AccoReserveDTO;
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
		model.addAttribute("alist", service.accommodateList());
		model.addAttribute("aclist", service.activityList());
		
		return "mypage/mypage_reserve";
	}

	// 예약 상세
	@GetMapping("/mypage/mypage_reserve_view")
	private String mypage_reserve_view(Model model, String treserve_seq, String rreserve_seq, String areserve_seq) {

		
		
		if (treserve_seq != null && treserve_seq != "") {
			model.addAttribute("tlist", service.treservedetail(treserve_seq));
			model.addAttribute("list", service.tpay(treserve_seq));
		} else if (rreserve_seq != null && rreserve_seq != "") {
			model.addAttribute("rlist", service.rreservedetail(rreserve_seq));
			model.addAttribute("list", service.rpay(rreserve_seq));
	    } else if (areserve_seq != null && areserve_seq != "") {
	    	model.addAttribute("alist", service.areservedetail(areserve_seq));
	    	model.addAttribute("list", service.apay(areserve_seq));
	    }		
		

		
		return "mypage/mypage_reserve_view";
	}
	
	@PostMapping("/mypage/mypage_reservedelok")
	private String mypage_reservedelok(Model model, String treserve_seq, String rreserve_seq, String areserve_seq) {


		System.out.println(treserve_seq);
		
		if (treserve_seq != null && treserve_seq != "") {
			int result = service.treservedel(treserve_seq);
		} else if (rreserve_seq != null && rreserve_seq != "") {
			int result = service.rreservedel(rreserve_seq);
	    } else if (areserve_seq != null && areserve_seq != "") {
	    	int result = service.areservedel(areserve_seq);
	    }		
		

		
		return "redirect:/mypage/mypage_reserve";
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
	
	//테스트
	@PostMapping("/mypage/mapmapok")
	private String mapmapok(String placeName, String addressName) {
		
		return "redirect:/mypage/journey";
		
	}


	
}
