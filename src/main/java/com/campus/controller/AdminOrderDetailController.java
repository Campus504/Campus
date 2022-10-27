package com.campus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminOrderDetailController {

	@GetMapping(path = {"/admin-order-detail.action"})
	public String adminOrderDetail() {
		
		return "admin-order-detail";
	}
}
