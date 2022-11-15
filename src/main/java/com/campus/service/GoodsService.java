package com.campus.service;

import java.util.List;

import com.campus.dto.GoodsDto;
import com.campus.dto.GoodsRegisterDto;
import com.campus.dto.MemberDto;

public interface GoodsService {

	List<GoodsDto> findGoodsByCategory(String category);

	GoodsDto findGoodsByGoodsCode(int goodsCode);

	GoodsRegisterDto findGoodsInByGoodsCode(int goodsCode);

	MemberDto findMemberByMemberId(String memberId);

}
