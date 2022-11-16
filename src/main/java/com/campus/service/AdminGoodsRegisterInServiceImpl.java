package com.campus.service;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.campus.dto.GoodsDto;
import com.campus.dto.GoodsOptionDto;
import com.campus.dto.GoodsRegisterDto;
import com.campus.mapper.AdminGoodsRegisterMapper;

import lombok.Setter;

@Service
@Repository
public class AdminGoodsRegisterInServiceImpl implements AdminGoodsRegisterInService {


	@Setter
	private AdminGoodsRegisterMapper adminGoodsRegisterMapper;

	// 입고 등록
	@Override
	public void adminGoodsRegisterIn(GoodsRegisterDto goodsregisters) {
		
		adminGoodsRegisterMapper.insertGoodsIn(goodsregisters);
					
	}


}
