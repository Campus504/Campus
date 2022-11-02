package com.campus.service;

import com.campus.dto.BoardDto;
import com.campus.mapper.FaqMapper;

import lombok.Setter;

public class FAQServiceImpl implements FAQService{
	
	@Setter
	private FaqMapper faqMapper;

	@Override
	public void writeAdminBoard(BoardDto board) {

		faqMapper.insertAdminBoard(board);
		
	}

}
