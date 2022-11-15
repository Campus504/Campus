package com.campus.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.campus.dto.GoodsDto;
import com.campus.dto.GoodsRegisterDto;
import com.campus.service.GoodsService;

@Controller
public class GoodsController {
	
	@Autowired
	@Qualifier("goodsService")
	private GoodsService goodsService; 
	
	@GetMapping(path= {"goods-list.action"})
	public String goodsList(@RequestParam(defaultValue = "0") String category, Model model) {
		
		if(category=="0") {
			return "redirect:main";
		}
		
		List<GoodsDto> goods = goodsService.findGoodsByCategory(category);
		model.addAttribute("category", category);
		model.addAttribute("goods", goods);
		return "order/goods-list";
	}
	
	@GetMapping(path= {"goods-detail.action"})
	public String goodsDetail(@RequestParam(defaultValue = "0") int goodsCode, Model model) {
		
		if(goodsCode==0) {
			return "redirect:main";
		}
		
		GoodsDto goods = goodsService.findGoodsByGoodsCode(goodsCode);
		GoodsRegisterDto goodsIn = goodsService.findGoodsInByGoodsCode(goodsCode);
		
		model.addAttribute("goods", goods);
		model.addAttribute("goodsIn", goodsIn);
		
		return "order/goods-detail";
	}
	
	@PostMapping(path= {"showOrderPage.action"})
	public String showOrderPage() {
		
		return "";
	}
	
	
	
}
