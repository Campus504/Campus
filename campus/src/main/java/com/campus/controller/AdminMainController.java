package com.campus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminMainController {
	
	@GetMapping(path= {"admin-main"})
	public String adminMain() {
		
		
		return "admin-main";
	}

}
