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

	@Override
	public void deleteGoods(int goodsCode) {
		adminGoodsRegisterMapper.deleteGoods(goodsCode);
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

	@Override			// 상품 정보 수정
	public void updategoodslist(GoodsOptionJoinDto goodsoptionjoins) {
		// adminGoodsRegisterMapper.updategoodslist(goodsoptionjoins);
	
	}

	
}