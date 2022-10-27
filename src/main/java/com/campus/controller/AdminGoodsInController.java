package com.campus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminGoodsInController {

	@GetMapping(path = {"/admin-goods-in.action"})
	public String adminGoodsIn() {
		
		return "admin-goods-in";
	}
}
