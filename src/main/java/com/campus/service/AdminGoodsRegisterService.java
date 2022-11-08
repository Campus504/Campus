package com.campus.service;

import com.campus.dto.GoodsDto;


public interface AdminGoodsRegisterService {

	void addGoods();
	
	GoodsDto findGoodsByAll(int GoodsCode);

}