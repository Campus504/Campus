package com.campus.service;

import javax.validation.Valid;

import com.campus.dto.GoodsDto;
import com.campus.dto.GoodsRegisterDto;


public interface AdminGoodsRegisterService {
	
	void adminGoodsRegister(GoodsDto goods);
	
	GoodsDto selectGoodsList(int GoodsCode);

	GoodsDto findBoardByBoardNo(int GoodsCode);

}