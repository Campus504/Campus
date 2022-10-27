package com.campus.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.campus.dto.BoardDto;
import com.campus.service.CommunityService;

@Controller
public class CommunityController {
	
	@Autowired @Qualifier("communityService")
	private CommunityService communityService; 
	
	@GetMapping(path= {"/freeboard.action"})
	public String showFreeboardList() {
		
		return "freeboard";
	}
	
	@GetMapping(path= {"/freeboard-detail.action"})
	public String showFreeboardDetail() {
		
		return "freeboard-detail";
	}
	
	@GetMapping(path= {"/freeboard-write.action"})
	public String showFreeboardWriteForm() {
		
		return "freeboard-write";
	}
	
	@PostMapping(path= {"/freeboard-write.action"})
	public String freeboardWrite(BoardDto board) {

		return "freeboard";
	}
	

}
