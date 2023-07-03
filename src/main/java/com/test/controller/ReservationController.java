package com.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class ReservationController {
	
	//쓸 객체에 대해 컴포넌트는 보내고 오토와이어드는 받음
	//@Autowired	//dao를 갖다쓸 수 있음
	//private ActivityDAO dao;
	
//	@Autowired
//	private ActivityMapper amapper;
//	
//	
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
	
	@GetMapping("/reservation") 
	private String reservation() {
		
		return "/reservation/reservation";
	}
	
	@GetMapping("/reservation/activity")
	private String activity() {
		
		return "/reservation/activity";
	}
	
	@GetMapping("/reservation/pay")
	private String pay() {
		
		return "/reservation/pay";
	}
	
	
}
