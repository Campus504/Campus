package com.campus.service;

import java.util.List;

import com.campus.dto.GoodsDto;
import com.campus.dto.GoodsOptionDto;
import com.campus.dto.GoodsOptionJoinDto;

public interface AdminGoodsRegisterListService {

	List<GoodsOptionJoinDto> findGoodsJoinedList();

	List<GoodsOptionJoinDto> adminGoodsListSearch(String search);       

	List<GoodsOptionJoinDto> findAdminGoodsByGoodsCode(int goodsCode);

	void updategoodslist(GoodsOptionJoinDto goodsoptionjoins);	// 상품정보 수정

	void deleteGoodsOption(int optionNo);		// 옵션 정보 삭제
	
	void deleteGoods(String status);		// 상품 상태 수정 : status

	List<GoodsDto> findAllGoods();

	List<GoodsOptionDto> findGoodsOptionsByGoodsCode(int goodsCode);
	
	
	
}