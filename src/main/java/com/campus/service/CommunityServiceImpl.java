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
	public void writeFreeboardTags(int boardTagNo, List<CommunityDto> tags) {
		communityMapper.insertFreeboardTags(boardTagNo, tags);
		
	}

		


	
	
	

}
