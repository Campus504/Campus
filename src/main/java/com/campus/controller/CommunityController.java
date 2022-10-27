package com.campus.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.campus.dto.BoardDto;
import com.campus.service.CommunityService;

@Controller 
public class CommunityController {
	
	@Autowired @Qualifier("communityService")
	private CommunityService communityService; 
	
	@GetMapping(path= {"freeboard.action"})
	public String showFreeboardList(Model model) {
		
		List<BoardDto> boards = communityService.selectAllFreeboard();
		
		model.addAttribute("boards", boards);
		
		
		return "community/freeboard";
	}
	
	@GetMapping(path= {"freeboard-detail.action"})
	public String showFreeboardDetail() {
		
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
		}
		
		
		return "redirect:freeboard.action";
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
