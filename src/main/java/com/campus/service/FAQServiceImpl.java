package com.campus.service;

import java.util.List;

import com.campus.dto.AttachDto;
import com.campus.dto.BoardDto;
import com.campus.mapper.FaqMapper;

import lombok.Setter;

public class FAQServiceImpl implements FAQService{
	
	@Setter
	private FaqMapper faqMapper;

	@Override
	public void writeAdminBoard(BoardDto board) {

		faqMapper.insertAdminBoard(board);
		
		if(board.getAttachments()!=null) {
			for(AttachDto attachment: board.getAttachments()) {
				attachment.setBoardNo(board.getBoardNo());
				faqMapper.insertBoardAttach(attachment);
			}
		}
		
		
	}
	
	 

	@Override
	public List<BoardDto> findNoticeByPage(int pageNo, int PAGE_SIZE) {
		int from = (pageNo-1)*PAGE_SIZE;
		int count = PAGE_SIZE;
		List<BoardDto> boards = faqMapper.selectNoticeByPage(from, count);
		
		return boards;
	}

	@Override
	public int findNoticeCount() {
		int boardCount = faqMapper.selectNoticeCount();
		return boardCount;
	}

	@Override
	public BoardDto findBoardByBoardNo(int boardNo) {

		BoardDto board = faqMapper.selectBoardByBoardNo(boardNo);
		
		return board;
	}

	@Override
	public void deleteNoticeBoard(int boardNo) {
		faqMapper.deleteNoticeBoard(boardNo);
	}

	@Override
	public void increaseNoticeReadCount(int boardNo) {
		faqMapper.updateNoticeReadCount(boardNo);
	}

	@Override
	public BoardDto findNoticeByBoardNo(int boardNo) {
		
		BoardDto board = faqMapper.selectNoticeByBoardNo(boardNo);
		
		return board;
	}

	@Override
	public void updateNoticeBoard(BoardDto board) {

		faqMapper.updateNoticeBaord(board);
		
	}

	@Override
	public List<BoardDto> searchNotice(String searchOption, String search, int pageNo, int PAGE_SIZE) {
		int from = (pageNo-1)*PAGE_SIZE;
		int count = PAGE_SIZE;
		
		List<BoardDto> boards = faqMapper.selectSearchNoticeByPage(searchOption, search, from, count);
		
		return boards;
	}

	@Override
	public int findSearchNoticeCount(String searchOption, String search) {
		int boardCount = faqMapper.selectSearchNoticeCount(searchOption,search);
		return boardCount;
	}

	@Override
	public List<BoardDto> findAllFaq() {
		List<BoardDto> boards = faqMapper.selectAllFaq();
		return boards;
	}

	@Override
	public void deleteFaq(int boardNo) {
		faqMapper.deleteFaq(boardNo);
	}

	@Override
	public BoardDto findFaqByBoardNo(int boardNo) {
		BoardDto board = faqMapper.selectFaqByBoardNo(boardNo);
		return board;
	}

	@Override
	public void editFaq(BoardDto board) {
		faqMapper.updateFaq(board);
	}


	@Override
	public AttachDto findBoardAttachByAttachNo(int attachNo) {
		AttachDto attachment = faqMapper.selectAttachByAttachNo(attachNo);
		return attachment;
	}

	

}
