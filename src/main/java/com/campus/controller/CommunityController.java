package com.campus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CommunityController {
	
	@GetMapping(path= {"/freeboard.action"})
	public String freeboardList() {
		
		
		return "freeboard";
	}
	
	@GetMapping(path= {"/freeboard-detail.action"})
	public String freeboardDetail() {
		
		
		return "freeboard-detail";
	}

}
