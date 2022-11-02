package com.campus.service;

import java.util.List;

import com.campus.dto.BoardDto;

public interface FAQService {

	void writeAdminBoard(BoardDto board);

	List<BoardDto> findNoticeByPage(int pageNo, int pAGE_SIZE);

	int findNoticeCount();

	BoardDto findBoardByBoardNo(int boardNo);

}
