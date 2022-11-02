package com.campus.service;

import java.util.List;

import com.campus.dto.BoardDto;
import com.campus.dto.CommunityDto;

public interface CommunityService {
	
	void writeFreeboard(BoardDto board);

	List<BoardDto> selectAllFreeboard();

	int findLastBoardNo();

	void writeFreeboardTags(int boardTagNo, String tag);

	List<BoardDto> findBoardByPage(int pageNo, int pageSize);

	int findBoardCount();

	void increaseBoardReadCount(int boardNo);

	BoardDto findBoardByBoardNo(int boardNo);

	void updateFreeboard(BoardDto board);

	void deleteFreeboard(int boardNo);

	CommunityDto findTagByBoardNo(int boardNo);

	List<BoardDto> findBoardByTag(String tag);

	List<BoardDto> searchFreeboard(String searchOption, String search);

	void updateFreeboardTags(int boardNo, String tag);


}
