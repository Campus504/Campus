package com.campus.service;

import java.util.List;

import com.campus.dto.CartDto;
import com.campus.dto.GoodsDto;
import com.campus.dto.GoodsRegisterDto;
import com.campus.dto.MemberDto;
import com.campus.dto.OrderDetailDto;
import com.campus.dto.OrderListDto;

public interface GoodsService {

	List<GoodsDto> findGoodsByCategoryTent();
	List<GoodsDto> findGoodsByCategoryTable();
	List<GoodsDto> findGoodsByCategoryMat();
	List<GoodsDto> findGoodsByCategoryDish();
	List<GoodsDto> findGoodsByCategoryStove();
	List<GoodsDto> findGoodsByCategoryEtc();

	GoodsDto findGoodsByGoodsCode(int goodsCode);

	GoodsRegisterDto findGoodsInByGoodsCode(int goodsCode);

	MemberDto findMemberByMemberId(String memberId);
	
	List<GoodsDto> findBestGoods();
	
	//장바구니 -> 오더
	List<CartDto> findCartById(String memberId);
	
	OrderListDto findRecentOrder(String memberId);
	
	List<OrderListDto> orderListByMemberId(String memberId);
	
	void insertOrder(OrderListDto orderList, OrderDetailDto orderDetail);
	
	void insertOrderDetail(OrderDetailDto orderDetail);



}
