package com.campus.service;

import java.util.List;

import com.campus.dto.AttachDto;
import com.campus.dto.BoardDto;

public interface FAQService {

	void writeAdminBoard(BoardDto board);

	List<BoardDto> findNoticeByPage(int pageNo, int pAGE_SIZE);

	int findNoticeCount();

	BoardDto findBoardByBoardNo(int boardNo);

	void deleteNoticeBoard(int boardNo);

	void increaseNoticeReadCount(int boardNo);

	BoardDto findNoticeByBoardNo(int boardNo);

	void updateNoticeBoard(BoardDto board);

	List<BoardDto> searchNotice(String searchOption, String search, int pageNo, int pAGE_SIZE);

	int findSearchNoticeCount(String searchOption, String search);

	List<BoardDto> findAllFaq();

	void deleteFaq(int boardNo);

	BoardDto findFaqByBoardNo(int boardNo);

	void editFaq(BoardDto board);

	AttachDto findBoardAttachByAttachNo(int attachNo);
	

}
