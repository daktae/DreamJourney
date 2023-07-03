package com.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	
	//@Autowired
	//Item item = new Item();
	//item.name;
	
	
	
	@GetMapping("/index")
	private String index() {
		
		return "index";
	}
}
