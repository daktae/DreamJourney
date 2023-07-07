package com.test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.domain.ActivityDTO;
import com.test.service.ActivityService;


@Controller		//호출된 URL을 통한 데이터 입출력
public class ActivityController {
	
	//쓸 객체에 대해 컴포넌트는 보내고 오토와이어드는 받음
	@Autowired
	public ActivityService service;
	
	@GetMapping("/reservation") 
	public String reservation() {
		
		return "/reservation/reservation";
	}
	
	//액티비티 글 리스트
	@GetMapping("/reservation/activity")
	public String activity(Model model) {
		
		model.addAttribute("list", service.activitylist());
		
		return "/reservation/activity";
	}
	
	
	//액티비티 글 상세보기
	@GetMapping("/reservation/viewactivity")
	public String viewactivity(Model model, String activity_seq) {
		
		ActivityDTO dto = service.get(activity_seq);
		List<ActivityDTO> rdto = service.review(activity_seq);
		
		model.addAttribute("adetail", dto);
		model.addAttribute("review", rdto);
		
		return "/reservation/viewactivity";
	}
	
	
	//결제하기
	@PostMapping("/reservation/pay")
	public String pay(Model model, String activity_seq, ActivityDTO dto) {
		
		dto.setTotalPeople(dto.getTotalPeople().replace(",",""));
		
		ActivityDTO pdto = service.pay(activity_seq);
		
		System.out.println(dto.getTotalPeople());
		System.out.println(dto.getDates());
		System.out.println(dto.getTotalPrice());
		
		System.out.println(dto);
		model.addAttribute("pdetail", pdto);
		model.addAttribute("dto", dto);
		return "/reservation/pay";
	}
	
	
	//즐겨찾기
	@PostMapping("/reservation/viewactivity")
	@ResponseBody
	public void bookmark_on(@RequestParam("activity_seq") String activity_seq) {
	    System.out.println("성공");
	    System.out.println(activity_seq);
	    
	    service.bookmark_on(activity_seq);
	    //return "/reservation/viewactivity";
	}
	
	
	
	
	@GetMapping("/reservation/payok")
	public String payok() {
		
		return "/reservation/payok";
	}
	
	
	
	//Controller에서 Controller를 호출할 때 redirect를 요청
	
}
