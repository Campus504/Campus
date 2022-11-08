package com.campus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminMainController {
	
	@GetMapping(path= {"admin-main"})
	public String adminMain() {

		
		return "admin-main";
	}
	
	@GetMapping(path= {"adminHeader.action"})
	public String adminHeader() {
		
		
		return "adminHeader";
	}
	
	@GetMapping(path= {"adminSidebar.action"})
	public String adminSidebar() {
		
		
		return "adminSidebar";
	}
	
}
