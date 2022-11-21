package com.campus.service;

import java.util.List;

import com.campus.dto.GoodsDto;
import com.campus.dto.OrderDetailDto;
import com.campus.dto.OrderListDto;

public interface AdminOrderService {

	List<OrderListDto> findAllOrderList();

	List<OrderDetailDto> findOrderDetails(int orderNo);

	List<OrderListDto> findOrderByMemberId(String search);

	List<OrderListDto> findSalesData();

	List<GoodsDto> findCategoryData();

	List<GoodsDto> findBestGoods();

	List<GoodsDto> findLatestGoods();

	
	
}
