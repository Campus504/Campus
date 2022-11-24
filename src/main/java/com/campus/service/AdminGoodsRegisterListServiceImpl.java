package com.campus.service;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.campus.dto.GoodsDto;
import com.campus.dto.GoodsOptionDto;
import com.campus.dto.GoodsOptionJoinDto;
import com.campus.mapper.AdminGoodsRegisterMapper;

import lombok.Setter;

@Service
@Repository
public class AdminGoodsRegisterListServiceImpl implements AdminGoodsRegisterListService {

      
	@Setter
	private AdminGoodsRegisterMapper adminGoodsRegisterMapper;

	@Override
	public List<GoodsOptionJoinDto> findGoodsJoinedList() {   
		List<GoodsOptionJoinDto> goods = adminGoodsRegisterMapper.selectJoinedList();
		return goods;
	}

	@Override  // 상품 옵션 삭제
	public void deleteGoodsOption(int optionNo) {
		adminGoodsRegisterMapper.delectGoodsOption(optionNo);
	}

	@Override
	public List<GoodsOptionJoinDto> adminGoodsListSearch(String search) {
		List<GoodsOptionJoinDto> goods = adminGoodsRegisterMapper.adminGoodsListSearch(search);
		return goods;
	}

	@Override
	public List<GoodsOptionJoinDto> findAdminGoodsByGoodsCode(int goodsCode) {
		List<GoodsOptionJoinDto> goods = adminGoodsRegisterMapper.selectAdminGoodsByGoodsCode(goodsCode);
		return goods;
	}

	@Override
	public List<GoodsDto> findAllGoods() {
		List<GoodsDto> goods = adminGoodsRegisterMapper.selectAllGoods();
		return goods;
	}

	@Override
	public List<GoodsOptionDto> findGoodsOptionsByGoodsCode(int goodsCode) {
		List<GoodsOptionDto> options = adminGoodsRegisterMapper.selectGoodsOptionsByGoodsCode(goodsCode);
		return options;
	}

	@Override
	public void deleteGoods(int goodsCode) {
		adminGoodsRegisterMapper.deleteGoods(goodsCode);
		
	}
	
	@Override
	public void updateGoodsOption(GoodsOptionDto option) {
		adminGoodsRegisterMapper.updateGoodsOption(option);
		
	}
	
	@Override
	public void activeGoods(int goodsCode) {
		adminGoodsRegisterMapper.activeGoods(goodsCode);
		
	}

	@Override
	public List<GoodsDto> findGoodsList(List<GoodsDto> goods) {
		adminGoodsRegisterMapper.updateGoodsList(goods);
		return goods;
	}

	@Override
	public GoodsDto findGoodsList(GoodsDto goods) {
		// TODO Auto-generated method stub
		return null;
	}

	

	
}