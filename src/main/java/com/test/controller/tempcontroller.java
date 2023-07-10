package com.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.test.service.MypageService;

@Controller
public class tempcontroller {
	
	@Autowired
	private MypageService service;
	
	//가입되면 메인으로
	@GetMapping("/board/share")
	private String share(Model model) {
		
		model.addAttribute("list", service.tripList());
		 
	    return "/board/share";
	}
}
