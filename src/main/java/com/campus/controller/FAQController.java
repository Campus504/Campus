package com.campus.controller;

import java.util.ArrayList;
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
import com.campus.dto.CommunityDto;
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
	
	// 겟 : 관리자 글쓰기 창 열기
	@GetMapping(path= {"admin-write.action"})
	public String showAdminWriteForm() {
		
		return "community/admin-write";
	}
	
	// 포스트 : 관리자 글 DB에 저장
	@PostMapping(path= {"admin-write.action"})
	public String adminWrite(BoardDto board) {
		faqService.writeAdminBoard(board);
		
		return "redirect:notice-list.action";
	}
	
	// 겟 : 페이지별로 공지사항 글 목록 불러오기
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
	
	// 겟 : 공지사항 글 상세 보기(+조회수 증가)
	@GetMapping(path= {"notice-detail.action"})
	public String showNoticeDetail(@RequestParam(defaultValue = "-1") int boardNo, @RequestParam(defaultValue = "-1") int pageNo, Model model, HttpSession session) {
		
		@SuppressWarnings("unchecked")
		ArrayList<Integer> readList = (ArrayList<Integer>)session.getAttribute("read-list");
		if( readList == null ) {
			readList = new ArrayList<>();
			session.setAttribute("read-list", readList);
		}
		if ( !readList.contains(boardNo) ) {
		faqService.increaseNoticeReadCount(boardNo);
		readList.add(boardNo);
		}
		BoardDto board = faqService.findBoardByBoardNo(boardNo);
		
		model.addAttribute("board", board);
		model.addAttribute("pageNo", pageNo);
		
		return "community/notice-detail";
	}
	
	//겟 : 공지사항 글 삭제하기
	@GetMapping(path= {"notice-delete.action"})
	public String deleteNoticeBoard(int boardNo) {
		
		faqService.deleteNoticeBoard(boardNo);
		
		return "redirect:notice-list.action";
	}
	
	// 겟 : 공지사항 수정 창 열기
	@GetMapping(path= {"notice-edit.action"})
	public String showNoticeEditForm(BoardDto board, @RequestParam(defaultValue = "1") int pageNo, Model model) {
		
		board = faqService.findNoticeByBoardNo(board.getBoardNo());
		
		model.addAttribute("board", board);
		model.addAttribute("pageNo", pageNo);
		
		return "community/notice-edit";
	}
	
	// 포스트 : 글 수정한 내용 DB에서 업데이트
	@PostMapping(path= {"notice-edit.action"})
	public String editNoticeBoard(BoardDto board, @RequestParam(defaultValue = "1") int pageNo, Model model) {
		
		faqService.updateNoticeBoard(board);
		
		model.addAttribute("boardNo", board.getBoardNo());
		model.addAttribute("pageNo", pageNo);
		
		return "redirect:notice-detail.action";
	}
	
	// 포스트 : 공지 검색
	@PostMapping(path= {"notice-search.action"})
	public String showNoticeSearchList(String searchOption, @RequestParam(defaultValue = "") String search, Model model, @RequestParam(defaultValue = "1") int pageNo) {
		if(search.equals("")) {
			
			return "redirect:notice-list.action";
		}
		
		List<BoardDto> boards = faqService.searchNotice(searchOption, search, pageNo, PAGE_SIZE); 
		int boardCount = faqService.findSearchNoticeCount(searchOption, search);
		int pageCount = 
				(boardCount / PAGE_SIZE) + ((boardCount % PAGE_SIZE) > 0 ? 1 : 0);
		
		model.addAttribute("boards", boards);
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("pageCount",pageCount);
		model.addAttribute("search", search);
		model.addAttribute("searchOption", searchOption);
		
		return "community/notice-search";
	}
	
	// 겟 : 검색 후 다음 페이지 불러오기 위한 메서드
	@GetMapping(path= {"notice-search.action"})
	public String showGetNoticeSearchList(String searchOption, @RequestParam(defaultValue = "") String search, Model model, @RequestParam(defaultValue = "1") int pageNo) {
		if(search.equals("")) {
			return "redirect:notice-list.action";
		}
		
		List<BoardDto> boards = faqService.searchNotice(searchOption, search, pageNo, PAGE_SIZE); 
		int boardCount = faqService.findSearchNoticeCount(searchOption, search);
		int pageCount = 
				(boardCount / PAGE_SIZE) + ((boardCount % PAGE_SIZE) > 0 ? 1 : 0);
		
		model.addAttribute("boards", boards);
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("pageCount",pageCount);
		model.addAttribute("search", search);
		model.addAttribute("searchOption", searchOption);
		
		return "community/notice-search";
	}
	
	// 겟 : 자주묻는 질문 리스트 보기
	@GetMapping(path= {"faq-list.action"})
	public String showFaqList(Model model) {
		
		List<BoardDto> boards = faqService.findAllFaq();
		model.addAttribute("boards", boards);
		
		return "community/faq-list";
	}
	
	// 겟 : 자주묻는 질문 글 삭제
	@GetMapping(path= {"faq-delete.action"})
	public String deleteFaq(int boardNo) {
		System.out.println(boardNo);
		faqService.deleteFaq(boardNo);
		
		return "redirect:faq-list.action";
	}
	
	
	
	
	
	
}
