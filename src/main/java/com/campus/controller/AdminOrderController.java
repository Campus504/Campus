package com.campus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminOrderController {

	@GetMapping(path = {"/admin-order.action"})
	public String adminOrder() {
		
		return "admin-order";
	}
}