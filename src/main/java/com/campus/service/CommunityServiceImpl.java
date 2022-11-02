package com.campus.service;

import java.util.List;

import com.campus.dto.BoardDto;
import com.campus.dto.CommunityDto;
import com.campus.mapper.CommunityMapper;

import lombok.Setter;

public class CommunityServiceImpl implements CommunityService {
	
	@Setter
	private CommunityMapper communityMapper;



	@Override
	public List<BoardDto> selectAllFreeboard() {

		List<BoardDto> boards = communityMapper.selectAllFreeboard();
		
		return boards;
	}

	@Override
	public void writeFreeboard(BoardDto board) {
		communityMapper.insertBoard(board); 
		
	}
	
	@Override
	public int findLastBoardNo() {
		int tagNo = communityMapper.selectLastBoardNo();
		return tagNo;
	}
	
	@Override
	public void writeFreeboardTags(int boardTagNo, String tag) {
		communityMapper.insertFreeboardTags(boardTagNo, tag);
		
	}//나중에 구현하기

	@Override
	public List<BoardDto> findBoardByPage(int pageNo, int pageSize) {
		
		int from = (pageNo-1)*pageSize;
		int count = pageSize;
		List<BoardDto> boards = communityMapper.selectBoardByPage(from, count);
		return boards;
	}

	@Override
	public int findBoardCount() {

		int boardCount = communityMapper.selectBoardCount();
		
		return boardCount;
	}

	@Override
	public void increaseBoardReadCount(int boardNo) {
		communityMapper.updateBoardReadCount(boardNo);
	}

	@Override
	public BoardDto findBoardByBoardNo(int boardNo) {

		BoardDto board = communityMapper.selectBoardByBoardNo(boardNo);
		
		return board;
	}

	@Override
	public void updateFreeboard(BoardDto board) {

		communityMapper.updateFreeboard(board);
		
	}

	@Override
	public void deleteFreeboard(int boardNo) {
		
		communityMapper.deleteFreeboard(boardNo);
		
	}

	@Override
	public CommunityDto findTagByBoardNo(int boardNo) {

		CommunityDto community = communityMapper.selectTagByBoardNo(boardNo);
		
		return community;
	}

	@Override
	public List<BoardDto> findBoardByTag(String tag) {
		List<BoardDto> boards = communityMapper.selectFreeboardByTag(tag);
		return boards;
	}

	@Override
	public List<BoardDto> searchFreeboard(String searchOption, String search) {
		List<BoardDto> boards = communityMapper.selectFreeboardBySearch(searchOption, search);
		
		return boards;
	}

	@Override
	public void updateFreeboardTags(int boardNo, String tag) {

		communityMapper.updateTagByBoardNo(boardNo, tag);
	}

		


	
	
	

}
