package com.campus.service;

import java.util.List;

import com.campus.dto.GoodsDto;
import com.campus.dto.GoodsRegisterDto;
import com.campus.dto.MemberDto;
import com.campus.mapper.GoodsMapper;

import lombok.Setter;

public class GoodsServiceImpl implements GoodsService {

	@Setter
	private GoodsMapper goodsMapper;

	@Override
	public List<GoodsDto> findGoodsByCategory(String category) {
		List<GoodsDto> goods = goodsMapper.selectGoodsByCategory(category);
		return goods;
	}

	@Override
	public GoodsDto findGoodsByGoodsCode(int goodsCode) {
		GoodsDto goods = goodsMapper.selectGoodsByGoodsCode(goodsCode);
		return goods;
	}

	@Override
	public GoodsRegisterDto findGoodsInByGoodsCode(int goodsCode) {
		GoodsRegisterDto goodsIn = goodsMapper.selectGoodsInByGoodsCode(goodsCode);
		return goodsIn;
	}

	@Override
	public MemberDto findMemberByMemberId(String memberId) {
		MemberDto member = goodsMapper.selectMemberByMemberId(memberId);
		return member;
	}
	
}
