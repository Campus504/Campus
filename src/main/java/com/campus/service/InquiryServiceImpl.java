package com.campus.service;

import java.util.List;

import com.campus.dto.BoardDto;
import com.campus.dto.CommunityDto;
import com.campus.mapper.CommunityMapper;
import com.campus.mapper.InquiryMapper;

import lombok.Setter;

public class InquiryServiceImpl implements InquiryService {
	
	@Setter
	private InquiryMapper inquiryMapper;



	@Override
	public List<BoardDto> selectAllInquiry() {

		List<BoardDto> boards = inquiryMapper.selectAllInquiry();
		
		return boards;
	}

	@Override
	public void writeInquiry(BoardDto board) {
		inquiryMapper.insertBoard(board); 
		
	}

	@Override
	public List<BoardDto> findBoardByPage(int pageNo, int pageSize) {
		
		int from = (pageNo-1)*pageSize;
		int count = pageSize;
		List<BoardDto> boards = inquiryMapper.selectBoardByPage(from, count);
		return boards;
	}

	@Override
	public int findBoardCount() {

		int boardCount = inquiryMapper.selectBoardCount();
		
		return boardCount;
	}

	@Override
	public void increaseBoardReadCount(int boardNo) {
		inquiryMapper.updateBoardReadCount(boardNo);
	}

	@Override
	public BoardDto findBoardByBoardNo(int boardNo) {

		BoardDto board = inquiryMapper.selectBoardByBoardNo(boardNo);
		
		return board;
	}

	@Override
	public void updateInquiry(BoardDto board) {

		inquiryMapper.updateInquiry(board);
		
	}

	@Override
	public void deleteInquiry(int boardNo) {
		
		inquiryMapper.deleteInquiry(boardNo);
		
	}

}
