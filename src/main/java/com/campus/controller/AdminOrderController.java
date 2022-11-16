package com.campus.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.campus.dto.OrderListDto;
import com.campus.service.AdminOrderService;

@Controller
public class AdminOrderController {
	
	@Autowired
	@Qualifier("adminOrderService")
	private AdminOrderService adminOrderService;
	

	@GetMapping(path = {"/admin-order.action"})
	public String adminOrder(Model model) {
		
		List<OrderListDto> orderList = adminOrderService.findAllOrderList();
		
		model.addAttribute("orderList", orderList);
 		
		return "/admingoods/admin-order-list";
	}
}