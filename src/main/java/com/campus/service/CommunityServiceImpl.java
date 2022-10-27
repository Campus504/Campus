package com.campus.service;

import com.campus.dto.BoardDto;
import com.campus.mapper.CommunityMapper;

import lombok.Setter;

public class CommunityServiceImpl implements CommunityService {
	
	@Setter
	private CommunityMapper communityMapper;

	@Override
	public void writeFreeboard(BoardDto board) {
		communityMapper.insertBoard(board); 
		
	}
	
	
	

}
