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
import com.campus.service.CommunityService;
import com.campus.ui.CommunityPager;
import com.campus.ui.ThePager;

@Controller 
public class CommunityController {
	
	private final int PAGE_SIZE = 5; //한 페이지에 표시되는 데이터 개수
	private final int PAGER_SIZE = 5; //한번에 표시할 페이지 번호 개수
	private final String LINK_URL="freeboard.action";//페이지 번호를 클릭했을 때 이동할 페이지 경로
	
	@Autowired @Qualifier("communityService")
	private CommunityService communityService; 
	
	@GetMapping(path= {"freeboard.action"})
	public String showFreeboardList(@RequestParam(defaultValue = "1") int pageNo , Model model) {
		List<BoardDto> boards = communityService.findBoardByPage(pageNo, PAGE_SIZE);
		int boardCount = communityService.findBoardCount();
		//ThePager pager = new ThePager(boardCount, pageNo, PAGE_SIZE, PAGER_SIZE, LINK_URL);
		CommunityPager pager = new CommunityPager(boardCount, pageNo, PAGE_SIZE, PAGER_SIZE, LINK_URL);
		
		model.addAttribute("boards", boards);
		model.addAttribute("pager",pager);
		model.addAttribute("pageNo",pageNo);
		
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
		
		model.addAttribute("board", board);
		model.addAttribute("pageNo", pageNo);
		
		return "community/freeboard-detail";
	}
	
	@GetMapping(path= {"freeboard-write.action"})
	public String showFreeboardWriteForm() {
		
		return "community/freeboard-write";
	}
	
	@PostMapping(path= {"freeboard-write.action"})

	public String writeFreeboard(BoardDto board) {
		
		communityService.writeFreeboard(board); //board 데이터 저장
		if (board.getTags()!=null) {
		int boardTagNo = communityService.findLastBoardNo(); //tag 저장용 최근 값 저장한 boardNo 찾기
		communityService.writeFreeboardTags(boardTagNo, board.getTags()); //가져온 boardNo에 태그 저장하기
		}//나중에 이어서 구현하기(받아온 tag값 db로 넘겨서 저장하기)
		
		
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
	

}
