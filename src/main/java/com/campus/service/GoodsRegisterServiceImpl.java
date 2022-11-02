package com.campus.service;

import java.util.Date;
import java.util.List;

import com.campus.common.Util;
import com.campus.dto.GoodsAttachDto;
import com.campus.dto.GoodsDto;
import com.campus.dto.GoodsOptionDto;
import com.campus.dto.GoodsOptionSeletionDto;
import com.campus.dto.GoodsRegisterDto;
import com.campus.mapper.GoodsMapper;

import lombok.Setter;

@SuppressWarnings("unused")
public class GoodsRegisterServiceImpl implements GoodsRegisterService {
	
	@Setter
	private GoodsMapper goodsMapper;

	@Override
	public void goods(GoodsDto goods) {
		
		goodsMapper.insertGoods(goods);
		
	}

	@Override
	public GoodsDto findGoods(int goodsCode, String category, String brand, String goodsName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void goodsoption(GoodsOptionDto goodsoption) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public GoodsOptionDto findGoodsOption(int optionNo, String optionName, String optionDesc, int goodsCode,
			String optionDataType, int optionValue) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void goodsoptionseletion(GoodsOptionSeletionDto goodsoptionseletion) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public GoodsOptionSeletionDto findGoodsOptionSeletion(int goodsOptionSeletionNo, String optionSeletionValue,
			int optionNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void goodsregister(GoodsRegisterDto goodsregister) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public GoodsRegisterDto findGoodsRegister(int inCode, String detail, int rentPrice, int goodsIn, Date goodsInDate,
			int goodsCode) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void goodsattach(GoodsAttachDto goodsattach) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public GoodsAttachDto findGoodsAttah(int attachNo, String fileName, String savedName, int goodsCode) {
		// TODO Auto-generated method stub
		return null;
	}

}
