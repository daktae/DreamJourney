package com.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.test.mapper.ActivityMapper;
import com.test.mapper.TripMapper;


@Controller
public class RegisterController {
	
	//쓸 객체에 대해 컴포넌트는 보내고 오토와이어드는 받음
	//@Autowired	//dao를 갖다쓸 수 있음
	//private ActivityDAO dao;
	
	@Autowired
	private ActivityMapper amapper;
	
	@Autowired
	private TripMapper tmapper;
	
	@GetMapping("/test")
	public String test() {
		
		String time = amapper.time();
		
		return "test";
	}
	
	@GetMapping("/register") 
	public String register(Model model) {
		
		
		
		return "/register/register";
	}
	
	
	
	
}
