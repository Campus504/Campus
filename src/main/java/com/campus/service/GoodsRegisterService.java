package com.campus.service;

import java.util.Date;

import com.campus.dto.GoodsAttachDto;
import com.campus.dto.GoodsDto;
import com.campus.dto.GoodsOptionDto;
import com.campus.dto.GoodsOptionSeletionDto;
import com.campus.dto.GoodsRegisterDto;

public interface GoodsRegisterService {

	void goods(GoodsDto goods);
	GoodsDto findGoods(int goodsCode, String category, String brand, String goodsName);
	
	void goodsoption(GoodsOptionDto goodsoption);
	GoodsOptionDto findGoodsOption(int optionNo, String optionName, String optionDesc, int goodsCode, String optionDataType, int optionValue);
	
	void goodsoptionseletion(GoodsOptionSeletionDto goodsoptionseletion);
	GoodsOptionSeletionDto findGoodsOptionSeletion(int goodsOptionSeletionNo, String optionSeletionValue ,int optionNo);
	
	void goodsregister(GoodsRegisterDto goodsregister);
	GoodsRegisterDto findGoodsRegister(int inCode, String detail, int rentPrice, int goodsIn, Date goodsInDate, int goodsCode);
	
	void goodsattach(GoodsAttachDto goodsattach);
	GoodsAttachDto findGoodsAttah(int attachNo, String fileName, String savedName, int goodsCode);
		
}