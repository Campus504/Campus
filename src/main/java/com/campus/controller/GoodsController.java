package com.campus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class GoodsController {
	
	@GetMapping(path= {"goods-list.action"})
	public String goodsList() {
		
		return "goods-list";
	}
	
	@GetMapping(path= {"goods-detail.action"})
	public String goodsDetail() {
		
		return "goods-detail";
	}
	
	
	
}
