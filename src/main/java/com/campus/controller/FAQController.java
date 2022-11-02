package com.campus.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.campus.dto.BoardDto;
import com.campus.service.FAQService;

@Controller
public class FAQController {
	
	private final int PAGE_SIZE = 5; //한 페이지에 표시되는 데이터 개수
	
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
		
		return "redirect:notice-list.action";
	}
	
	@GetMapping(path= {"notice-list.action"})
	public String showNoticeList(@RequestParam(defaultValue = "1") int pageNo , Model model) {
		
		List<BoardDto> boards = faqService.findNoticeByPage(pageNo, PAGE_SIZE);
		int boardCount = faqService.findNoticeCount();
		int pageCount = 
				(boardCount / PAGE_SIZE) + ((boardCount % PAGE_SIZE) > 0 ? 1 : 0);
		model.addAttribute("boards", boards);
		model.addAttribute("pageNo",pageNo);
		model.addAttribute("pageCount",pageCount);
		
		return "community/notice-list";
	}
	
	@GetMapping(path= {"notice-detail.action"})
	public String showNoticeDetail(@RequestParam(defaultValue = "-1") int boardNo, @RequestParam(defaultValue = "-1") int pageNo, Model model) {
		
		BoardDto board = faqService.findBoardByBoardNo(boardNo);
		
		model.addAttribute("board", board);
		model.addAttribute("pageNo", pageNo);
		
		return "community/notice-detail";
	}
	
}
