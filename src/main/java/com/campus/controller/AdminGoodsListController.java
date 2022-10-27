package com.campus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminGoodsListController {

	@GetMapping(path = {"/admin-goods-list.action"})
	public String adminGoodsList() {
		
		return "admin-goods-list";
	}
}
