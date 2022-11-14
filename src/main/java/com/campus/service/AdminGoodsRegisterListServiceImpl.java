package com.campus.service;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

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



	
}