package com.campus.service;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.campus.dto.GoodsDto;
import com.campus.mapper.AdminGoodsRegisterMapper;


import lombok.Setter;

@Service
@Repository
public abstract class AdminGoodsRegisterServiceImpl implements AdminGoodsRegisterService {


	@Setter
	private AdminGoodsRegisterMapper admingoodsregisterMapper;

	
	
}
