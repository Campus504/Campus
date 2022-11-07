package com.campus.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.campus.dto.BoardDto;
import com.campus.dto.CommunityDto;
import com.campus.service.CommunityService;

@Controller 
public class CommunityController {
	
	private final int PAGE_SIZE = 5; //한 페이지에 표시되는 데이터 개수
	
	@Autowired @Qualifier("communityService")
	private CommunityService communityService; 
	
	// 겟 : 페이지별로 자유게시판 글 불러오기
	@GetMapping(path= {"freeboard.action"})
	public String showFreeboardList(@RequestParam(defaultValue = "1") int pageNo , Model model) {
		List<BoardDto> boards = communityService.findBoardByPage(pageNo, PAGE_SIZE);
		int boardCount = communityService.findBoardCount();
		int pageCount = 
				(boardCount / PAGE_SIZE) + ((boardCount % PAGE_SIZE) > 0 ? 1 : 0);
		model.addAttribute("boards", boards);
		model.addAttribute("pageNo",pageNo);
		model.addAttribute("pageCount",pageCount);
		
		return "community/freeboard";
	}
	
	// 겟 : 글 상세페이지 보기 (+조회수 증가)
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
	
	// 겟 : 글쓰기 창 불러오기
	@GetMapping(path= {"freeboard-write.action"})
	public String showFreeboardWriteForm() {
		
		return "community/freeboard-write";
	}
	
	// 포스트  : 글쓰고 DB에 저장
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
	
	// 겟 : 글 수정 창 열기
	@GetMapping(path= {"freeboard-edit.action"})
	public String showEditFreeboard(BoardDto board, @RequestParam(defaultValue = "1") int pageNo, Model model) {
		
		board = communityService.findBoardByBoardNo(board.getBoardNo());
				
		model.addAttribute("board", board);
		model.addAttribute("pageNo", pageNo);
		
		return "community/freeboard-edit";
	}
	
	// 포스트 : 글 수정한 내용 DB에서 업데이트
	@PostMapping(path= {"freeboard-edit.action"})
	public String editFreeboard(BoardDto board, @RequestParam(defaultValue = "1") int pageNo, Model model, CommunityDto community) {
		
		communityService.updateFreeboard(board);
		
		communityService.deleteUpdateBoardTag(board.getBoardNo()); //글 수정되면 일단 원래 있던 태그 값 지우기
		
		//새로 입력된 태그가 있으면 새로 값 넣어주기
		if (community.getTag()!=null) {
			String tag = community.getTag();
			communityService.InsertFreeboardTags(board.getBoardNo(), tag); //가져온 boardNo로 DB에 태그 저장하기
			}
	
		model.addAttribute("boardNo", board.getBoardNo());
		model.addAttribute("pageNo", pageNo);
		
		return "redirect:freeboard-detail.action";
	}
	
	// 겟 : 글 삭제
	@GetMapping(path= {"freeboard-delete.action"})
	public String deleteFreeboard(int boardNo) {
		
		communityService.deleteFreeboard(boardNo);
		
		return "redirect:freeboard.action";
	}
	
	// 겟 : 태그 선택하기 기능 구현
	@GetMapping(path= {"freeboard-tag.action"})
	public String showTagFreeBoardList(String tag, Model model, @RequestParam(defaultValue = "1") int pageNo) {
		List<BoardDto> boards = communityService.findBoardByTag(tag, pageNo, PAGE_SIZE);
		int boardCount = communityService.findTagBoardCount(tag);
		int pageCount = 
				(boardCount / PAGE_SIZE) + ((boardCount % PAGE_SIZE) > 0 ? 1 : 0);
		System.out.println(pageNo);
		System.out.println(pageCount);
		model.addAttribute("boards", boards);
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("pageCount",pageCount);
		model.addAttribute("tag", tag);
		return "community/freeboard-tag"; 
	}
	
	// 포스트 : 검색 기능 구현
	@PostMapping(path= {"freeboard-search.action"})
	public String showFreeboardSearchList(String searchOption, @RequestParam(defaultValue = "") String search, Model model, @RequestParam(defaultValue = "1") int pageNo) {
		if(search.equals("")) {
			return "redirect:freeboard.action";
		}
		
		List<BoardDto> boards = communityService.searchFreeboard(searchOption, search, pageNo, PAGE_SIZE); 
		int boardCount = communityService.findSearchBoardCount(searchOption, search);
		int pageCount = 
				(boardCount / PAGE_SIZE) + ((boardCount % PAGE_SIZE) > 0 ? 1 : 0);
		
		model.addAttribute("boards", boards);
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("pageCount",pageCount);
		model.addAttribute("search", search);
		model.addAttribute("searchOption", searchOption);
		
		return "community/freeboard-search";
	}
	
	// 겟 : 검색 후 다음 페이지 불러오기 위한 메서드
	@GetMapping(path= {"freeboard-search.action"})
	public String showGetFreeboardSearchList(String searchOption, @RequestParam(defaultValue = "") String search, Model model, @RequestParam(defaultValue = "1") int pageNo) {
		if(search.equals("")) {
			return "redirect:freeboard.action";
		}
		
		List<BoardDto> boards = communityService.searchFreeboard(searchOption, search, pageNo, PAGE_SIZE); 
		int boardCount = communityService.findSearchBoardCount(searchOption, search);
		int pageCount = 
				(boardCount / PAGE_SIZE) + ((boardCount % PAGE_SIZE) > 0 ? 1 : 0);
		
		model.addAttribute("boards", boards);
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("pageCount",pageCount);
		model.addAttribute("search", search);
		model.addAttribute("searchOption", searchOption);
		
		return "community/freeboard-search";
	}
	
	// 겟 : 캠핑팁 리스트 불러오기
	@GetMapping(path= {"tip-list.action"})
	public String showTiplist(@RequestParam(defaultValue = "1") int pageNo , Model model) {
		List<BoardDto> boards = communityService.findTipByPage(pageNo, PAGE_SIZE);
		int boardCount = communityService.findTipCount();
		int pageCount = 
				(boardCount / PAGE_SIZE) + ((boardCount % PAGE_SIZE) > 0 ? 1 : 0);
		model.addAttribute("boards", boards);
		model.addAttribute("pageNo",pageNo);
		model.addAttribute("pageCount",pageCount);
		return "community/tip-list";
	}
	
	//포스트 : summer note 이미지 파일 저장하기
	@PostMapping(path= {"upload-image-file"}) @ResponseBody
	public String uploadImage(MultipartHttpServletRequest req) {
		
		MultipartFile file = req.getFile("file");
		String fileName = file.getOriginalFilename();
		String unique_file_name = UUID.randomUUID().toString();
		unique_file_name += fileName.substring(fileName.lastIndexOf("."));
		String path = 
				req.getServletContext().getRealPath("/resources/image-files/" + unique_file_name);
		try {
			file.transferTo(new File(path)); // 저장
		} catch (Exception ex) {
			ex.printStackTrace();
		}		 
		
		return "/resources/image-files/" + unique_file_name; // 서버에 저장된 파일 경로
	}
	
	// 겟 : 캠핑 팁 글 쓰기 창 열기
	@GetMapping(path= {"tip-write.action"})
	public String showTipWriteForm() {
		
		return "community/tip-write";
	}

	// 포스트 : 캠핑 팁 글 쓰고 DB에 저장하기 + 사진 저장
	@PostMapping(path= {"tip-write.action"})
	public String WriteTip(BoardDto board, Model model) {
		
		communityService.writeTip(board);
		
		model.addAttribute("board", board);
		
		return "community/tip-list";//나중에 글 상세보기로 매핑 변경
	}
	
	//겟 : 캠핑팁 상세페이지 보기 (+조회수 증가)
	@GetMapping(path= {"tip-detail.action"})
	public String showTipDetail(@RequestParam(defaultValue = "-1") int boardNo, @RequestParam(defaultValue = "-1") int pageNo, Model model, HttpSession session) {
		
		if(boardNo==-1||pageNo==-1) {
			return "redirect:tip-list.action";
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
		
		return "community/tip-detail";
	}
	
	
	

}
