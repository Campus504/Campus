package com.campus.service;

import java.util.List;

import com.campus.dto.GoodsOptionJoinDto;

public interface AdminGoodsRegisterListService {

	List<GoodsOptionJoinDto> findGoodsJoinedList();
	
}