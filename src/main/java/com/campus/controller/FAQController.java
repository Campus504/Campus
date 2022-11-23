package com.campus.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.View;

import com.campus.common.Util;
import com.campus.dto.AttachDto;
import com.campus.dto.BoardDto;
import com.campus.service.FAQService;
import com.campus.view.DownloadView;

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
	
	// 겟 : 관리자 글쓰기 창 열기(공지사항)
	@GetMapping(path= {"admin-write.action"})
	public String showAdminNoticeWriteForm() {
		
		return "community/admin-write";
	}
	
	// 겟 : 관리자 글쓰기 창 열기(자주묻는질문)
	@GetMapping(path= {"admin-write2.action"})
	public String showAdminFaqWriteForm() {
		
		return "community/admin-write2";
	}
	
	// 포스트 : 관리자(공지사항) 글 DB에 저장
	@PostMapping(path= {"admin-write.action"})
	public String adminNoticeWrite(BoardDto board, MultipartHttpServletRequest req) {
		
		MultipartFile attach = req.getFile("attach");
		
		if (attach != null) { //내용이 있는 경우
		ServletContext application =  req.getServletContext();
		String path = application.getRealPath("/resources/board-attachments");
		String fileName = attach.getOriginalFilename(); //파일 이름 가져오기
		if(fileName !=null && fileName.length()>0) {
			String uniqueFileName = Util.makeUniqueFileName(fileName);
			try {
					attach.transferTo(new File(path, uniqueFileName))	; //파일 저장
					ArrayList<AttachDto> attachments = new ArrayList<>(); 
					AttachDto attachment = new AttachDto();
					attachment.setFileName(fileName);
					attachment.setSavedName(uniqueFileName);
					attachments.add(attachment);
					board.setAttachments(attachments);
				} catch (Exception e) {
					e.printStackTrace();
				} 
			}
		}
		faqService.writeAdminBoard(board);
		
		return "redirect:notice-list.action";
	}
	
	// 포스트 : 관리자(자주묻는질문) 글 DB에 저장
	@PostMapping(path= {"admin-write2.action"})
	public String adminFaqWrite(BoardDto board) {
		faqService.writeAdminBoard(board);
		
		return "redirect:faq-list.action";
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
	
	// 겟 : 파일 다운받기
	@GetMapping(path= {"download.action"})
	public View download(@RequestParam(defaultValue = "-1") int attachNo, Model model) {
		if(attachNo == -1) {
			model.addAttribute("error_type", "download");
			model.addAttribute("message", "첨부 파일 번호가 없습니다.");
			//return new RedirectView("error"); /////////////////http://localhost:8080/spring-demoweb-f/board/download.action?attachno=
		}
		AttachDto attachment =  faqService.findBoardAttachByAttachNo(attachNo);
		
		//view에게 전달할 데이터 저장
		model.addAttribute("attachment", attachment);
		DownloadView view = new DownloadView();
		
		return view;
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
	
	// 겟 : 공지 검색 
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
		faqService.deleteFaq(boardNo);
		
		return "redirect:faq-list.action";
	}
	
	// 겟 : 자주 묻는질문 수정 창 열기
	@GetMapping(path= {"faq-edit.action"})
	public String showFaqEditForm(int boardNo , Model model) {
		
		BoardDto board = faqService.findFaqByBoardNo(boardNo);
		
		model.addAttribute("board", board);
		
		return "community/faq-edit";
	}
	
	// 포스트 : 자주 묻는질문 수정
		@PostMapping(path= {"faq-edit.action"})
		public String FaqEdit(BoardDto board) {
			faqService.editFaq(board);
			return "redirect:faq-list.action";
		}
	
	
	
}
