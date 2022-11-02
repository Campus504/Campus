package com.campus.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.campus.dto.BoardDto;
import com.campus.service.FAQService;

@Controller
public class FAQController {
	
	@Autowired 
	@Qualifier("faqService")
	private FAQService faqService;
	
	@GetMapping(path = {"/faq.action"})
	public String faq() {
		
		return "faq";
	}
	
	@GetMapping(path= {"admin-write.action"})
	public String showAdminWriteForm() {
		
		return "community/admin-write";
	}
	
	@PostMapping(path= {"admin-write.action"})
	public String adminWrite(BoardDto board) {
		
		faqService.writeAdminBoard(board);
		
		
		return "redirect:freeboard.action";// 어디로 보내야하지?
	}
	
}
