package com.campus.service;

import java.util.List;

import com.campus.dto.BoardCommentDto;
import com.campus.dto.BoardDto;
import com.campus.dto.CommunityDto;
import com.campus.mapper.CommunityMapper;
import com.campus.mapper.InquiryMapper;

import lombok.Setter;

public class InquiryServiceImpl implements InquiryService {
	
	@Setter
	private InquiryMapper inquiryMapper;
	@Setter
	private CommunityMapper communityMapper;


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
	public int findLastBoardNo() {
		int tagNo = inquiryMapper.selectLastBoardNo();
		return tagNo;
	}
	
	@Override
	public void writeInquiryTags(int boardTagNo, String tag) {
		inquiryMapper.insertInquiryTags(boardTagNo, tag);
		
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
	
	@Override
	public CommunityDto findTagByBoardNo(int boardNo) {

		CommunityDto community = inquiryMapper.selectTagByBoardNo(boardNo);
		
		return community;
	}

	@Override
	public List<BoardDto> findBoardByTag(String tag) {
		List<BoardDto> boards = inquiryMapper.selectInquiryByTag(tag);
		return boards;
	}

	@Override
	public List<BoardDto> searchInquiry(String search) {

		List<BoardDto> boards = inquiryMapper.selectInquiryBySearch(search);
		
		return boards;
	}
	
	

}
