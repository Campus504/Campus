package com.campus.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;

import com.campus.service.AdminGoodsRegisterListService;


@Controller
//@RequestMapping(path = { "/admingoods" })
public class AdminGoodsListController {

	private final int PAGE_SIZE = 20; // 한 페이지에 표시 되는 데이터 개수
	
	@Autowired
	@Qualifier("admingoodsregisterlistService")
	private AdminGoodsRegisterListService admingoodsregisterlistService;
	
	// 상품리스트 페이지로 이동
	@GetMapping(path = {"admin-goods-list.action"})
	public String adminGoodsList() {
		
		return "admingoods/admin-goods-list";
	}
	
	// 관리자페이지) 상품등록 후 상품목록에서 데이터 불러오기
//	@GetMapping(path = { "" })
//	public String 
}