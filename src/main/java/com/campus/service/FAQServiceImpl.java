package com.campus.service;

import com.campus.dto.BoardDto;
import com.campus.mapper.FAQMapper;

import lombok.Setter;

public class FAQServiceImpl implements FAQService{
	
	@Setter
	private FAQMapper faqMapper;

	@Override
	public void writeAdminBoard(BoardDto board) {

		faqMapper.insertAdminBoard(board);
		
	}

}
