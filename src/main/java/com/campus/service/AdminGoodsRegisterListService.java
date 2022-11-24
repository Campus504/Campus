package com.campus.service;

import java.util.List;

import com.campus.dto.GoodsDto;
import com.campus.dto.GoodsOptionDto;
import com.campus.dto.GoodsOptionJoinDto;

public interface AdminGoodsRegisterListService {

	List<GoodsOptionJoinDto> findGoodsJoinedList();

	List<GoodsOptionJoinDto> adminGoodsListSearch(String search);       

	List<GoodsOptionJoinDto> findAdminGoodsByGoodsCode(int goodsCode);

	void deleteGoodsOption(int optionNo);		// 옵션 정보 삭제
	
	void updateGoodsOption(GoodsOptionDto option);		// 옵션 정보 수정
	
	void deleteGoods(int goodsCode);		// 상품 상태 수정 1

	void activeGoods(int goodsCode);		// 상품 상태 수정 2
	
	List<GoodsDto> findAllGoods();

	List<GoodsOptionDto> findGoodsOptionsByGoodsCode(int goodsCode);

	

	GoodsDto findGoodsList(GoodsDto goods);

	List<GoodsDto> findGoodsList(List<GoodsDto> goods);

	
	
}