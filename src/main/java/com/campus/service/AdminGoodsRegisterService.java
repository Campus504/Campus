package com.campus.service;

import java.util.List;

import javax.validation.Valid;

import com.campus.dto.GoodsDto;
import com.campus.dto.GoodsOptionDto;
import com.campus.dto.GoodsOptionSeletionDto;
import com.campus.dto.GoodsRegisterDto;


public interface AdminGoodsRegisterService {
	
	void adminGoodsRegister(GoodsDto goods);
	
	void adminGoodsOptionRegister(String[] optionInputs);
	

	
}