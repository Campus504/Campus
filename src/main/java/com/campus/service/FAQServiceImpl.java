package com.campus.service;

import java.util.List;

import com.campus.dto.BoardDto;
import com.campus.mapper.FaqMapper;

import lombok.Setter;

public class FAQServiceImpl implements FAQService{
	
	@Setter
	private FaqMapper faqMapper;

	@Override
	public void writeAdminBoard(BoardDto board) {

		faqMapper.insertAdminBoard(board);
		
	}

	@Override
	public List<BoardDto> findNoticeByPage(int pageNo, int PAGE_SIZE) {
		int from = (pageNo-1)*PAGE_SIZE;
		int count = PAGE_SIZE;
		List<BoardDto> boards = faqMapper.selectNoticeByPage(from, count);
		
		return boards;
	}

	@Override
	public int findNoticeCount() {
		int boardCount = faqMapper.selectNoticeCount();
		return boardCount;
	}

	@Override
	public BoardDto findBoardByBoardNo(int boardNo) {

		BoardDto board = faqMapper.selectBoardByBoardNo(boardNo);
		
		return board;
	}

}
