package com.campus.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.campus.dto.BoardDto;
import com.campus.service.CommunityService;

@Controller @RequestMapping(path= {"/community"})
public class CommunityController {
	
	@Autowired @Qualifier("communityService")
	private CommunityService communityService; 
	
	@GetMapping(path= {"/freeboard.action"})
	public String showFreeboardList() {
		
		return "community/freeboard";
	}
	
	@GetMapping(path= {"/freeboard-detail.action"})
	public String showFreeboardDetail() {
		
		return "community/freeboard-detail";
	}
	
	@GetMapping(path= {"/freeboard-write.action"})
	public String showFreeboardWriteForm() {
		
		return "community/freeboard-write";
	}
	
	@PostMapping(path= {"/freeboard-write.action"})
	public String writeFreeboard(BoardDto board) {
		communityService.writeFreeboard(board);
		
		
		return "community/freeboard";
	}
	
	@GetMapping(path= {"freeboard-edit.action"})
	public String editFreeboard() {
		
		return "community/freeboard-edit";
	}
	
	@GetMapping(path= {"freeboard-delete.action"})
	public String deleteFreeboard() {
		
		return "community/freeboard";
	}
	

}
