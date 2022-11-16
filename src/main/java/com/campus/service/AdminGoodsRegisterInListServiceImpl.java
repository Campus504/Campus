package com.campus.service;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.campus.dto.GoodsDto;
import com.campus.dto.GoodsOptionDto;
import com.campus.dto.GoodsOptionJoinDto;
import com.campus.dto.GoodsRegisterDto;
import com.campus.mapper.AdminGoodsRegisterMapper;

import lombok.Setter;

@Service
@Repository
public class AdminGoodsRegisterInListServiceImpl implements AdminGoodsRegisterInListService {


	@Setter
	private AdminGoodsRegisterMapper adminGoodsRegisterMapper;

	@Override
	public List<GoodsRegisterDto> adminGoodsRegisterInList() {
		
		List<GoodsRegisterDto> goodsregisters = adminGoodsRegisterMapper.adminGoodsRegisterInList(); 
		
		return goodsregisters;
		
	}

	@Override
	public List<GoodsRegisterDto> findGoodsInList() {
		
		List<GoodsRegisterDto> goodsregisters = adminGoodsRegisterMapper.adminGoodsRegisterInList(); 
		
		return goodsregisters;
	}

	
	

	

}
