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
		
	}

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
	public List<BoardDto> findBoardByTag(String tag,int pageNo,int PAGE_SIZE) {
		int from = (pageNo-1)*PAGE_SIZE;
		int count = PAGE_SIZE;
		List<BoardDto> boards = communityMapper.selectFreeboardByTag(tag, from, count);
		return boards;
	}

	@Override
	public List<BoardDto> searchFreeboard(String searchOption, String search, int pageNo, int pageSize) {
		int from = (pageNo-1)*pageSize;
		int count = pageSize;
		List<BoardDto> boards = communityMapper.selectFreeboardBySearch(searchOption, search, from, count);
		
		return boards;
	}

	@Override
	public void InsertFreeboardTags(int boardNo, String tag) {

		communityMapper.insertTagByBoardNo(boardNo, tag);
	}

	@Override
	public int findSearchBoardCount(String searchOption, String search) {

		int boardCount = communityMapper.selectSerchBoardCount(searchOption,search);
		
		return boardCount;
	}

	@Override
	public int findTagBoardCount(String tag) {
		int boardCount = communityMapper.selectTagCount(tag);
		return boardCount;
	}

	
	@Override
	public void deleteUpdateBoardTag(int boardNo) {
		
		communityMapper.deleteUpdateBoardTag(boardNo);
		
	}

	@Override
	public List<BoardDto> findTipByPage(int pageNo, int PAGE_SIZE) {
		int from = 0;
		int count = PAGE_SIZE*pageNo;
		List<BoardDto> boards = communityMapper.selectTipByPage(from, count);
		return boards;
	}

	@Override
	public int findTipCount() {
		int boardCount = communityMapper.selectTipCount();
		return boardCount;
	}

		
	@Override
	public void writeTip(BoardDto board) {
		communityMapper.insertTip(board);
	}

	@Override
	public List<BoardDto> searchTip(String searchOption, String search, int PAGE_SIZE) {
		int from = 0;
		int count = PAGE_SIZE;
		List<BoardDto> boards = communityMapper.selectTipBySearch(searchOption, search, from, count);
		return boards;
	}

	@Override
	public int findSearchTipCount(String searchOption, String search) {
		int boardCount = communityMapper.selectTipBoardCount(searchOption,search);
		
		return boardCount;
	}


	
	
	

}
