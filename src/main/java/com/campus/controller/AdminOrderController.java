package com.campus.controller;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.campus.dto.OrderDetailDto;
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
	
	
	@GetMapping(path= {"find-order-detail.action"}) @ResponseBody
	public List<OrderDetailDto> findOrderDetailInModal(int orderNo) {
		
		List<OrderDetailDto> details = adminOrderService.findOrderDetails(orderNo);
		//System.out.println(details);
		return details;
				
		
	}
	
	@PostMapping(path= {"admin-order-list-search.action"})
	public String searchAdminOrderByMemberId(@RequestParam(defaultValue = "") String search, Model model) {
		if(search.length()==0) {
			return "redirect:admin-order.action";
		}
		List<OrderListDto> orderList = adminOrderService.findOrderByMemberId(search);
		model.addAttribute("orderList", orderList);
		
		return "/admingoods/admin-order-search";
	}
	
	
	
	
	
	
	
	
	
}