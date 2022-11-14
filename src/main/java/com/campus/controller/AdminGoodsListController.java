package com.campus.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

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
	
	// 관리자페이지) 상품등록 후 상품목록에서 데이터 불러오기
//	@GetMapping(path = { "" })
//	public String 
}