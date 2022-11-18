package com.campus.service;

import java.util.List;

import com.campus.dto.GoodsDto;
import com.campus.dto.GoodsOptionDto;
import com.campus.dto.GoodsOptionJoinDto;

public interface AdminGoodsRegisterListService {

	List<GoodsOptionJoinDto> findGoodsJoinedList();

	List<GoodsOptionJoinDto> adminGoodsListSearch(String search);

	List<GoodsOptionJoinDto> findAdminGoodsByGoodsCode(int goodsCode);
	
	void deleteGoods(int goodsCode);

	void updategoodslist(GoodsOptionJoinDto goodsoptionjoins);	// 상품정보 수정
	
}