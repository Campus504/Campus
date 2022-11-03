package com.campus.service;

import java.util.List;

import com.campus.common.Util;
import com.campus.dto.GoodsDto;
import com.campus.dto.MemberDto;
import com.campus.mapper.AdminGoodsRegisterMapper;
import com.campus.mapper.MemberMapper;

import lombok.Setter;

public class AdminGoodsRegisterServiceImpl implements AdminGoodsRegisterService {

	@Setter
	private AdminGoodsRegisterMapper goodsregiterMapper;

	
	@Override
	public void insertgoodsregister(GoodsDto goods) {
	
		goodsregiterMapper.insertGoods(goods);
		
	}
	
	@Override
	public List<GoodsDto> findGoodsAll(int goodsCode, String category, String brand, String goodsName) {
		
//		List<GoodsDto> goods = AdminGoodsRegisterMapper.selectGoods(goods);

		return null;
		
	}
	
}
