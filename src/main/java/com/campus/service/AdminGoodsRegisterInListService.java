package com.campus.service;

import java.sql.Date;
import java.util.List;

import javax.validation.Valid;

import com.campus.dto.GoodsOptionJoinDto;
import com.campus.dto.GoodsRegisterDto;

public interface AdminGoodsRegisterInListService {
	
	List<GoodsRegisterDto> adminGoodsRegisterInList();

	List<GoodsRegisterDto> findGoodsInList();

	
}
