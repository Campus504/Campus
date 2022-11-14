package com.campus.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.campus.dto.GoodsOptionJoinDto;
import com.campus.service.AdminGoodsRegisterListService;


@Controller
//@RequestMapping(path = { "/admingoods" })
public class AdminGoodsListController {

	@Autowired
	@Qualifier("adminGoodsRegisterListService")
	private AdminGoodsRegisterListService adminGoodsRegisterListService;
	
	// 상품리스트 페이지로 이동
	@GetMapping(path = {"admin-goods-list.action"})
	public String adminGoodsList(Model model) {
		
		List<GoodsOptionJoinDto> goods = adminGoodsRegisterListService.findGoodsJoinedList();
		
		model.addAttribute("goods", goods);
		
		return "admingoods/admin-goods-list";
	}
	
	// 리스트에서 상품 삭제
	@GetMapping(path= {"admin-goods-delete.action"})
	public String adminGoodsDelete(@RequestParam(defaultValue = "0") int goodsCode) {
		if(goodsCode==0) {
			return "redirect:admin-goods-list.action";
		}
		
		adminGoodsRegisterListService.deleteGoods(goodsCode);
		
		return "redirect:admin-goods-list.action";
	}
	
	//상품 리스트에서 검색
	@PostMapping(path= {"admin-goods-list-search.action"})
	public String adminGoodsSearch(@RequestParam(defaultValue = "") String search, Model model) {
		if(search=="") {
			return "redirect:admin-goods-list.action";
		}
		
		List<GoodsOptionJoinDto> goods = adminGoodsRegisterListService.adminGoodsListSearch(search);
		model.addAttribute("goods", goods);
		
		return "admingoods/admin-goods-list-search";
		
	}
	
	@GetMapping(path= {"admin-goods-edit.action"})
	public String adminGoodsEdit(@RequestParam(defaultValue = "0") int goodsCode, Model model) {
		if(goodsCode==0) {
			return "redirect:admin-goods-list.action";
		}
		
		List<GoodsOptionJoinDto> goods = adminGoodsRegisterListService.findAdminGoodsByGoodsCode(goodsCode);
		model.addAttribute("goods", goods);
		return "admingoods/admin-goods-list-edit";
	}
	
	
	
	
	
	
	
	
	
	
	
}