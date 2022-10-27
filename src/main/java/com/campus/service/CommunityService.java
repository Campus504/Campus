package com.campus.service;

import java.util.List;

import com.campus.dto.BoardDto;
import com.campus.dto.CommunityDto;

public interface CommunityService {
	
	void writeFreeboard(BoardDto board);

	List<BoardDto> selectAllFreeboard();

	int findLastBoardNo();

	void writeFreeboardTags(int boardTagNo, List<CommunityDto> tags);


}
