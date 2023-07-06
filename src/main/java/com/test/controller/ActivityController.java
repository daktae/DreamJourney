package com.test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.test.domain.ActivityDTO;
import com.test.service.ActivityService;


@Controller		//호출된 URL을 통한 데이터 입출력
public class ActivityController {
	
	//쓸 객체에 대해 컴포넌트는 보내고 오토와이어드는 받음
	//@Autowired	//dao를 갖다쓸 수 있음
	//private ActivityDAO dao;
	
//	@Autowired
//	private ActivityMapper amapper;
//	
//	@Autowired
//	private TripMapper tmapper;
	
//	@GetMapping("/test")
//	public String test() {
//		
//		String time = amapper.time();
//		
//		return "test";
//	}
	
	@Autowired
	private ActivityService service;
	
	@GetMapping("/reservation") 
	private String reservation() {
		
		return "/reservation/reservation";
	}
	
	//액티비티 글 리스트
	@GetMapping("/reservation/activity")
	private String activity(Model model) {
		
		model.addAttribute("list", service.activitylist());
		
		return "/reservation/activity";
	}
	
	//액티비티 글 상세보기
	@GetMapping("/reservation/viewactivity")
	private String viewactivity(Model model, String activity_seq) {
		
		ActivityDTO dto = service.get(activity_seq);
		List<ActivityDTO> rdto = service.review(activity_seq);
		
		model.addAttribute("adetail", dto);
		model.addAttribute("review", rdto);
		
		return "/reservation/viewactivity";
	}
	
	
	//결제하기
	@PostMapping("/reservation/pay")
	private String pay(Model model, String activity_seq, ActivityDTO dto) {
		
		ActivityDTO pdto = service.pay(activity_seq);
		
		System.out.println(dto.getTotalPeople());
		System.out.println((dto.getDates()));
		
		System.out.println(dto);
		model.addAttribute("pdetail", pdto);
		model.addAttribute("dto", dto);
		return "/reservation/pay";
	}
	
	
	
	@GetMapping("/reservation/payok")
	private String payok() {
		
		return "/reservation/payok";
	}
	
	//Controller에서 Controller를 호출할 때 redirect를 요청
	
}
