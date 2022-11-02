package com.campus.service;

import com.campus.dto.GoodsDto;

public interface GoodsRegisterService {

	void goodsregister(GoodsDto goods);
	GoodsDto findGoodsByIdAndGoods(int goodsCode, String category, String brand, String goodsName);

}
