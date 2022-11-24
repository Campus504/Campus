package com.campus.service;

import java.util.List;

import com.campus.dto.BoardCommentDto;
import com.campus.dto.BoardDto;
import com.campus.dto.CommunityDto;

public interface CommunityService {
	
	void writeFreeboard(BoardDto board);

	List<BoardDto> findBoardByPage(int pageNo, int pageSize);

	int findBoardCount();

	void increaseBoardReadCount(int boardNo);

	BoardDto findBoardByBoardNo(int boardNo);

	void updateFreeboard(BoardDto board);

	void deleteFreeboard(int boardNo);

	CommunityDto findTagByBoardNo(int boardNo);

	List<BoardDto> findBoardByTag(String tag,int pageNo,int PAGE_SIZE);

	List<BoardDto> searchFreeboard(String searchOption, String search, int pageNo, int pageSize );

	void InsertFreeboardTags(int boardNo, String tag);

	int findSearchBoardCount(String searchOption, String search);

	int findTagBoardCount(String tag);

	void deleteUpdateBoardTag(int boardNo);

	List<BoardDto> findTipByPage(int pageNo, int pAGE_SIZE);

	int findTipCount();
	
	void writeTip(BoardDto board);

	List<BoardDto> searchTip(String searchOption, String search,  int PAGE_SIZE, int pageNo);

	int findSearchTipCount(String searchOption, String search);

	List<BoardCommentDto> findBoardCommentByBoardNo(int boardNo);

	void writeComment(BoardCommentDto commentDto);

	void updateGroupNo(int commentNo, int groupNo);

	void deleteComment(int commentNo);

	void updateComment(BoardCommentDto comment);

	void writeReComment(BoardCommentDto comment);

	List<BoardDto> findBestBoard();



}
