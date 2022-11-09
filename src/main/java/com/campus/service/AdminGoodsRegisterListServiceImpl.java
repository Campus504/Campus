package com.campus.service;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.campus.dto.GoodsDto;
import com.campus.dto.GoodsRegisterDto;
import com.campus.mapper.AdminGoodsRegisterMapper;

import lombok.Setter;

@Service
@Repository
public class AdminGoodsRegisterListServiceImpl implements AdminGoodsRegisterListService {


	@Setter
	private AdminGoodsRegisterMapper admingoodsregisterMapper;

	@Override
	public GoodsDto selectGoodsList(int GoodsCode) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void showgoodslist(GoodsDto goods) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public GoodsDto selectGoodsList(GoodsDto goods1) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<GoodsDto> findGoodsList(List<GoodsDto> goods1) {
		// TODO Auto-generated method stub
		return null;
	}

	

	
}