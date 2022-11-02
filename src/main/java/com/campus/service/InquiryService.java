package com.campus.service;

import java.util.List;

import com.campus.dto.BoardDto;

public interface InquiryService {

	List<BoardDto> selectAllInquiry();

	void writeInquiry(BoardDto board);

	List<BoardDto> findBoardByPage(int pageNo, int pageSize);

	int findBoardCount();

	void increaseBoardReadCount(int boardNo);

	BoardDto findBoardByBoardNo(int boardNo);

	void updateInquiry(BoardDto board);

	void deleteInquiry(int boardNo);

}
