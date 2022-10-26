package com.campus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminMemberInfoController {
	
	@GetMapping(path= {"/member-info.action"})
	public String memberInfo() {
		
		
		return "member-info";
	}
	

}

