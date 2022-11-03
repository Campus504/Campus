package com.campus.service;

import java.util.List;

import com.campus.dto.GoodsDto;


public interface AdminGoodsRegisterService {

	void insertgoodsregister(GoodsDto goods);
	
	List<GoodsDto> findGoodsAll(int goodsCode, String category, String brand, String goodsName);
		
}