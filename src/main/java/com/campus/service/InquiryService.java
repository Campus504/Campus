package com.campus.service;

import java.util.List;

import com.campus.dto.BoardCommentDto;
import com.campus.dto.BoardDto;
import com.campus.dto.CommunityDto;

public interface InquiryService {

	List<BoardDto> selectAllInquiry();

	void writeInquiry(BoardDto board);

	List<BoardDto> findBoardByPage(int pageNo, int pageSize);

	int findBoardCount();

	void increaseBoardReadCount(int boardNo);

	BoardDto findBoardByBoardNo(int boardNo);

	void updateInquiry(BoardDto board);

	void deleteInquiry(int boardNo);

	CommunityDto findTagByBoardNo(int boardNo);

	List<BoardDto> findBoardByTag(String tag);

	List<BoardDto> searchInquiry(String search);

	int findLastBoardNo();

	void writeInquiryTags(int boardTagNo, String tag);

}
