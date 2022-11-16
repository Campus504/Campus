package com.campus.service;

import java.util.List;

import com.campus.dto.GoodsDto;
import com.campus.dto.GoodsRegisterDto;
import com.campus.dto.MemberDto;
import com.campus.dto.OrderDetailDto;
import com.campus.dto.OrderListDto;

public interface GoodsService {

	List<GoodsDto> findGoodsByCategory(String category);

	GoodsDto findGoodsByGoodsCode(int goodsCode);

	GoodsRegisterDto findGoodsInByGoodsCode(int goodsCode);

	MemberDto findMemberByMemberId(String memberId);

	void insertOrder(OrderListDto orderList, OrderDetailDto orderDetail);

}
