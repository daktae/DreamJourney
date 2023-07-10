package com.test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.domain.ActivityDTO;
import com.test.domain.ReviewDTO;
import com.test.service.ActivityService;


@Controller		//호출된 URL을 통한 데이터 입출력
public class ActivityController {
	
	//쓸 객체에 대해 컴포넌트는 보내고 오토와이어드는 받음
	@Autowired
	public ActivityService service;
	
	//액티비티 글 리스트
	@GetMapping("/reservation/activity")
	public String activity(Model model) {
		
		model.addAttribute("list", service.activitylist());
		
		return "/reservation/activity";
	}
	
	
	//액티비티 글 상세보기
	@GetMapping("/reservation/viewactivity")
	public String viewactivity(Model model, String activity_seq) {
		
		ActivityDTO dto = service.get(activity_seq);					//게시글
		List<ReviewDTO> rdto = service.review(activity_seq);	//리뷰
		String rcount = service.reviewCount(activity_seq);		//리뷰 수 
		String address = dto.getAddress().substring(0, 2);			//타이틀에 넣을 주소 2글자
		
		model.addAttribute("adetail", dto);
		model.addAttribute("review", rdto);
		model.addAttribute("reviewCount", rcount);
		model.addAttribute("address", address);
		
		return "/reservation/viewactivity";
	}
	
	
	//결제하기
	@PostMapping("/reservation/pay")
	public String pay(Model model, String activity_seq, String dates, ActivityDTO dto) {
		
		dto.setTotalPeople(dto.getTotalPeople().replace(",",""));
		
		ActivityDTO pdto = new ActivityDTO();
		pdto.setActivity_seq(activity_seq);
		pdto.setDates(dates);
				
		service.pay(pdto);
		
		model.addAttribute("pdetail", pdto);
		model.addAttribute("dto", dto);
		
		return "/reservation/pay";
	}
	
	//결제성공
	@PostMapping("/reservation/payok")
	@ResponseBody
	public String payok(@RequestParam("totalPrice") String totalPrice, @RequestParam("dates") String dates, @RequestParam("activity_seq") String activity_seq) {
	    
	    ActivityDTO dto = new ActivityDTO();
	    dto.setTotalPrice(totalPrice);
	    dto.setDates(dates);
	    dto.setActivity_seq(activity_seq);
	    
	    String payday = service.paydate(dto);
	    dto.setAdate_seq(payday);
	    
	    service.payok(dto);
	    
	    return "/reservation/payok";
	}
	
	
	//즐겨찾기
	@PostMapping("/reservation/viewactivity")
	@ResponseBody
	public void bookmark_on(@RequestParam("activity_seq") String activity_seq) {
	    System.out.println("성공");
	    System.out.println(activity_seq);
	    
	    service.bookmark_on(activity_seq);
	}
	
	@GetMapping("/reservation/payok")
	public String payok() {
		
		return "/reservation/payok";
	}
	
	
	
	//Controller에서 Controller를 호출할 때 redirect를 요청
	
}
