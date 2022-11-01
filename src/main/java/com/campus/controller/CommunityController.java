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
import com.campus.service.CommunityService;
import com.campus.ui.CommunityPager;
import com.campus.ui.ThePager;

@Controller 
public class CommunityController {
	
	private final int PAGE_SIZE = 5; //한 페이지에 표시되는 데이터 개수
	
	@Autowired @Qualifier("communityService")
	private CommunityService communityService; 
	
	@GetMapping(path= {"freeboard.action"})
	public String showFreeboardList(@RequestParam(defaultValue = "1") int pageNo , Model model) {
		List<BoardDto> boards = communityService.findBoardByPage(pageNo, PAGE_SIZE);
		int boardCount = communityService.findBoardCount();
		CommunityPager pager = new CommunityPager(boardCount, pageNo, PAGE_SIZE);
		model.addAttribute("boards", boards);
		model.addAttribute("pageNo",pager.getPageNo());
		model.addAttribute("pageCount",pager.getPageCount());
		
		return "community/freeboard";
	}
	
	@GetMapping(path= {"freeboard-detail.action"})
	public String showFreeboardDetail(@RequestParam(defaultValue = "-1") int boardNo, @RequestParam(defaultValue = "-1") int pageNo, Model model, HttpSession session) {
		
		if(boardNo==-1||pageNo==-1) {
			return "redirect:freeboard.action";
		}
		
		@SuppressWarnings("unchecked")
		ArrayList<Integer> readList = (ArrayList<Integer>)session.getAttribute("read-list");
		if( readList == null ) {
			readList = new ArrayList<>();
			session.setAttribute("read-list", readList);
		}
		
		if ( !readList.contains(boardNo) ) {
		communityService.increaseBoardReadCount(boardNo);
		readList.add(boardNo);
		}
		
		BoardDto board = communityService.findBoardByBoardNo(boardNo);
		CommunityDto community = communityService.findTagByBoardNo(boardNo);
		
		model.addAttribute("board", board);
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("community", community);
		
		return "community/freeboard-detail";
	}
	
	@GetMapping(path= {"freeboard-write.action"})
	public String showFreeboardWriteForm() {
		
		return "community/freeboard-write";
	}
	
	@PostMapping(path= {"freeboard-write.action"})

	public String writeFreeboard(BoardDto board, CommunityDto community ) {
		
		communityService.writeFreeboard(board); //board 데이터 저장
		
		if (community.getTag()!=null) {
		int boardTagNo = communityService.findLastBoardNo(); //tag 저장용 최근 값 저장한 boardNo 찾기
		String tag = community.getTag();
		communityService.writeFreeboardTags(boardTagNo, tag); //가져온 boardNo로 DB에 태그 저장하기
		}
		
		return "redirect:freeboard.action";
	}
	
	@GetMapping(path= {"freeboard-edit.action"})
	public String showEditFreeboard(BoardDto board,@RequestParam(defaultValue = "1") int pageNo, Model model) {
		
		board = communityService.findBoardByBoardNo(board.getBoardNo());
				
		model.addAttribute("board", board);
		model.addAttribute("pageNo", pageNo);
		
		return "community/freeboard-edit";
	}
	
	@PostMapping(path= {"freeboard-edit.action"})
	public String editFreeboard(BoardDto board, @RequestParam(defaultValue = "1") int pageNo, Model model) {
		
		communityService.updateFreeboard(board);
		
		model.addAttribute("boardNo", board.getBoardNo());
		model.addAttribute("pageNo", pageNo);
		
		return "redirect:freeboard-detail.action";
	}
	
	
	@GetMapping(path= {"freeboard-delete.action"})
	public String deleteFreeboard(int boardNo) {
		
		communityService.deleteFreeboard(boardNo);
		
		return "redirect:freeboard.action";
	}
	
	@GetMapping(path= {"freeboardTag.action"})
	public String showTagFreeBoardList(String tag, Model model, @RequestParam(defaultValue = "1") int pageNo) {
		
		List<BoardDto> boards = communityService.findBoardByTag(tag);
		model.addAttribute("boards", boards);
		model.addAttribute("pageNo", pageNo);
		return "community/freeboard";
	}
	
	@PostMapping(path= {"freeboard-search.action"})
	public String showFreeboardSearchList(String search, Model model, @RequestParam(defaultValue = "1") int pageNo) {
		List<BoardDto> boards = communityService.searchFreeboard(search); 
		model.addAttribute("boards", boards);
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("search", search);
		
		return "community/freeboard-search";
	}
	

}
