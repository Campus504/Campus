package com.campus.service;

import java.util.List;

import com.campus.dto.GoodsDto;
import com.campus.dto.GoodsRegisterDto;
import com.campus.dto.MemberDto;
import com.campus.dto.OrderDetailDto;
import com.campus.dto.OrderListDto;
import com.campus.mapper.GoodsMapper;

import lombok.Setter;

public class GoodsServiceImpl implements GoodsService {

	@Setter
	private GoodsMapper goodsMapper;

	@Override
	public List<GoodsDto> findGoodsByCategoryTent() {
		List<GoodsDto> goods = goodsMapper.selectGoodsByCategoryTent();
		return goods;
	}
	@Override
	public List<GoodsDto> findGoodsByCategoryTable() {
		List<GoodsDto> goods = goodsMapper.selectGoodsByCategoryTable();
		return goods;
	}
	@Override
	public List<GoodsDto> findGoodsByCategoryMat() {
		List<GoodsDto> goods = goodsMapper.selectGoodsByCategoryMat();
		return goods;
	}
	@Override
	public List<GoodsDto> findGoodsByCategoryDish() {
		List<GoodsDto> goods = goodsMapper.selectGoodsByCategoryDish();
		return goods;
	}
	@Override
	public List<GoodsDto> findGoodsByCategoryStove() {
		List<GoodsDto> goods = goodsMapper.selectGoodsByCategoryStove();
		return goods;
	}
	@Override
	public List<GoodsDto> findGoodsByCategoryEtc() {
		List<GoodsDto> goods = goodsMapper.selectGoodsByCategoryEtc();
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

	@Override
	public void insertOrder(OrderListDto orderList, OrderDetailDto orderDetail) {
		goodsMapper.insertOrder(orderList);
		orderDetail.setOrderNo(orderList.getOrderNo());
		goodsMapper.insertOrderDetail(orderDetail);
		
	}
	@Override
	public List<GoodsDto> findBestGoods() {
		List<GoodsDto> goods = goodsMapper.selectBestGoods();
		return goods;
	}
	
	@Override
	public List<GoodsDto> findGoodsByGoodsCode(List<GoodsDto> goods) {
		/*
		 * List<GoodsDto> goodsList = null; for(int i=0;i<goods.size();i++) {
		 * 
		 * GoodsDto good =
		 * goodsMapper.selectGoodsByGoodsCode(goods.get(i).getGoodsCode());
		 * goodsList.add(good); } System.out.println(goodsList);
		 */
		return null;
	}
	
}
