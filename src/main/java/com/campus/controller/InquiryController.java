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
import org.springframework.web.bind.annotation.ResponseBody;

import com.campus.dto.BoardCommentDto;
import com.campus.dto.BoardDto;
import com.campus.dto.CommunityDto;
import com.campus.service.CommunityService;
import com.campus.service.InquiryService;
import com.campus.ui.CommunityPager;

@Controller 
public class InquiryController {
	
	private final int PAGE_SIZE = 5; //한 페이지에 표시되는 데이터 개수
	
	@Autowired @Qualifier("inquiryService")
	private InquiryService inquiryService; 
	@Autowired @Qualifier("communityService")
	private CommunityService communityService; 
	
	@GetMapping(path= {"inquiry.action"})
	public String showInquiryList(@RequestParam(defaultValue = "1") int pageNo , Model model) {
		List<BoardDto> boards = inquiryService.findBoardByPage(pageNo, PAGE_SIZE);
		int boardCount = inquiryService.findBoardCount();
		CommunityPager pager = new CommunityPager(boardCount, pageNo, PAGE_SIZE);
		model.addAttribute("boards", boards);
		model.addAttribute("pageNo",pager.getPageNo());
		model.addAttribute("pageCount",pager.getPageCount());
		
		return "community/inquiry";
	}
	
	@GetMapping(path= {"inquiry-detail.action"})
	public String showInquiryDetail(@RequestParam(defaultValue = "-1") int boardNo, @RequestParam(defaultValue = "-1") int pageNo, Model model, HttpSession session) {
		
		if(boardNo==-1||pageNo==-1) {
			return "redirect:inquiry.action";
		}
		
		@SuppressWarnings("unchecked")
		ArrayList<Integer> readList = (ArrayList<Integer>)session.getAttribute("read-list");
		if( readList == null ) {
			readList = new ArrayList<>();
			session.setAttribute("read-list", readList);
		}
		
		if ( !readList.contains(boardNo) ) {
		inquiryService.increaseBoardReadCount(boardNo);
		readList.add(boardNo);
		}
		
		BoardDto board = inquiryService.findBoardByBoardNo(boardNo);
		CommunityDto community = inquiryService.findTagByBoardNo(boardNo);
		
		model.addAttribute("board", board);
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("community", community);
		
		return "community/inquiry-detail";
	}
	
	@GetMapping(path= {"inquiry-write.action"})
	public String showInquiryWriteForm() {
		
		return "community/inquiry-write";
	}
	
	@PostMapping(path= {"inquiry-write.action"})

	public String writeInquiry(BoardDto board, CommunityDto community ) {
		
		inquiryService.writeInquiry(board); //board 데이터 저장
		
		if (community.getTag()!=null) {
			int boardTagNo = inquiryService.findLastBoardNo(); //tag 저장용 최근 값 저장한 boardNo 찾기
			String tag = community.getTag();
			inquiryService.writeInquiryTags(boardTagNo, tag); //가져온 boardNo로 DB에 태그 저장하기
			}
		
		return "redirect:inquiry.action";
	}
	
	@GetMapping(path= {"inquiry-edit.action"})
	public String showEditInquiry(BoardDto board,@RequestParam(defaultValue = "1") int pageNo, Model model) {
		
		board = inquiryService.findBoardByBoardNo(board.getBoardNo());
				
		model.addAttribute("board", board);
		model.addAttribute("pageNo", pageNo);
		
		return "community/inquiry-edit";
	}
	
	@PostMapping(path= {"inquiry-edit.action"})
	public String editInquiry(BoardDto board, @RequestParam(defaultValue = "1") int pageNo, Model model) {
		
		inquiryService.updateInquiry(board);
		
		model.addAttribute("boardNo", board.getBoardNo());
		model.addAttribute("pageNo", pageNo);
		
		return "redirect:inquiry-detail.action";
	}
	
	
	@GetMapping(path= {"inquiry-delete.action"})
	public String deleteInquiry(int boardNo) {
		
		inquiryService.deleteInquiry(boardNo);
		
		return "redirect:inquiry.action";
	}
	
	@GetMapping(path= {"inquiryTag.action"})
	public String showTagInquiryList(String tag, Model model, @RequestParam(defaultValue = "1") int pageNo) {
		
		List<BoardDto> boards = inquiryService.findBoardByTag(tag);
		model.addAttribute("boards", boards);
		model.addAttribute("pageNo", pageNo);
		return "community/inquiry";
	}
	
	@PostMapping(path= {"inquiry-search.action"})
	public String showInquirySearchList(String search, Model model, @RequestParam(defaultValue = "1") int pageNo) {
		
		List<BoardDto> boards = inquiryService.searchInquiry(search); 
		model.addAttribute("boards", boards);
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("search", search);
		
		return "community/inquiry-search";
	}
	
	@GetMapping(path= {"inquiry-comment-list.action"})
	public String showCommentList2(int boardNo,  Model model) {
		List<BoardCommentDto> comments =  communityService.findBoardCommentByBoardNo(boardNo);
		
		model.addAttribute("comments", comments);
		return "community/inquiry-comment-list";
	}
	
	
//	@GetMapping(path= {"inquiry-search.action"})
//	public String showGetFreeboardSearchList(String searchOption, @RequestParam(defaultValue = "") String search, Model model, @RequestParam(defaultValue = "1") int pageNo) {
//		if(search.equals("")) {
//			return "redirect:inquiry.action";
//		}
//		List<BoardDto> boards = inquiryService.searchInquiry(searchOption, search, pageNo, PAGE_SIZE); 
//		int boardCount = communityService.findSearchBoardCount(searchOption, search);
//		int pageCount = 
//				(boardCount / PAGE_SIZE) + ((boardCount % PAGE_SIZE) > 0 ? 1 : 0);
//		
//		model.addAttribute("boards", boards);
//		model.addAttribute("pageNo", pageNo);
//		model.addAttribute("pageCount",pageCount);
//		model.addAttribute("search", search);
//		model.addAttribute("searchOption", searchOption);
//		
//		return "community/inquiry-search";
//	}
	
}
