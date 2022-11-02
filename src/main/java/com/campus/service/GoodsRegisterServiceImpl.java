package com.campus.service;

import java.util.List;

import com.campus.dto.GoodsDto;
import com.campus.mapper.GoodsMapper;

import lombok.Setter;

@SuppressWarnings("unused")
public class GoodsRegisterServiceImpl implements GoodsRegisterService {
	
	@Setter
	private GoodsMapper goodsMapper;

	@Override
	public void goodsregister(GoodsDto goods) {
		
	}

	@Override
	public GoodsDto findGoodsByIdAndGoods(int goodsCode, String category, String brand, String goodsName) {

		return null;
	}


}
