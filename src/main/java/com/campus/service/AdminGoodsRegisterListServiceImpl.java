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
public class AdminGoodsRegisterListServiceImpl implements AdminGoodsRegisterListService {


	@Setter
	private AdminGoodsRegisterMapper admingoodsregisterMapper;




	
}