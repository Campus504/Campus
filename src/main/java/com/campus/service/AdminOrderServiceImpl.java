package com.campus.service;

import java.util.List;

import com.campus.dto.OrderListDto;
import com.campus.mapper.AdminOrderMapper;

import lombok.Setter;

public class AdminOrderServiceImpl implements AdminOrderService {
	
	@Setter
	private AdminOrderMapper adminOrderMapper;

	@Override
	public List<OrderListDto> findAllOrderList() {
		
		List<OrderListDto> orderList = adminOrderMapper.selectAllOrderList();
		
		return orderList;
	}
	
	

}
