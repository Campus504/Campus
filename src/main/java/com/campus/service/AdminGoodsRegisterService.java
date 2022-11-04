package com.campus.service;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.campus.dto.GoodsDto;

@Component
@Service
public interface AdminGoodsRegisterService {

	void insertgoodsregister(GoodsDto goods);
	
	List<GoodsDto> findGoodsAll(GoodsDto goods);

	List<GoodsDto> findGoodsAll();
	
	
}