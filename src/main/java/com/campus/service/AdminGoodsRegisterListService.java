package com.campus.service;

import java.util.List;

import com.campus.dto.GoodsOptionJoinDto;

public interface AdminGoodsRegisterListService {

	List<GoodsOptionJoinDto> findGoodsJoinedList();

	void deleteGoods(int goodsCode);

	List<GoodsOptionJoinDto> adminGoodsListSearch(String search);

	List<GoodsOptionJoinDto> findAdminGoodsByGoodsCode(int goodsCode);
	
}