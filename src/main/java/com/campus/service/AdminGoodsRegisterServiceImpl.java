package com.campus.service;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.campus.dto.GoodsDto;
import com.campus.dto.GoodsOptionDto;
import com.campus.dto.GoodsOptionSeletionDto;
import com.campus.dto.GoodsRegisterDto;
import com.campus.mapper.AdminGoodsRegisterMapper;

import lombok.Setter;

@Service
@Repository
public class AdminGoodsRegisterServiceImpl implements AdminGoodsRegisterService {


	@Setter
	private AdminGoodsRegisterMapper admingoodsregisterMapper;
	
	// 상품 등록
	@Override
	public void adminGoodsRegister(GoodsDto goods) {
		
		admingoodsregisterMapper.adminGoodsRegister(goods);
		
	}
	
	// 상품 등록
	@Override
	public void adminGoodsOption(GoodsOptionDto goodsoption) {
		
		admingoodsregisterMapper.adminGoodsOption(goodsoption);
		
	}
	
	// 상품 등록
	@Override
	public void adminGoodsOptionSelection(GoodsOptionSeletionDto goodsoptionselection) {

		admingoodsregisterMapper.adminGoodsOptionSelection(goodsoptionselection);
		
	}

	
}