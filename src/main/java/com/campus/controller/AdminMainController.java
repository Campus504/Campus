package com.campus.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.campus.dto.GoodsDto;
import com.campus.service.AdminOrderService;

@Controller
public class AdminMainController {
	
	@Autowired
	@Qualifier("adminOrderService")
	private AdminOrderService adminOrderService;
	
	@GetMapping(path= {"admin-main"})
	public String adminMain(Model model ) {

		List<GoodsDto> bestGoods = adminOrderService.findBestGoods();
		List<GoodsDto> latestGoods = adminOrderService.findLatestGoods();
		
		model.addAttribute("latestGoods", latestGoods);
		model.addAttribute("bestGoods", bestGoods);
		return "admin-main";
	}
	
	@GetMapping(path= {"adminHeader.action"})
	public String adminHeader() {
		
		
		return "adminHeader";
	}
	
	@GetMapping(path= {"adminSidebar.action"})
	public String adminSidebar() {
		
		
		return "adminSidebar";
	}
	
}
