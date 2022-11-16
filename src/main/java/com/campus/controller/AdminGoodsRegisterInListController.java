package com.campus.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.campus.dto.GoodsDto;
import com.campus.dto.GoodsRegisterDto;
import com.campus.service.AdminGoodsRegisterInListService;


@Controller
public class AdminGoodsRegisterInListController {
	
	private final int PAGE_SIZE = 50; //한 페이지에 표시되는 데이터 개수

	@Autowired
	@Qualifier("admingoodsregisterinlistService")
	private AdminGoodsRegisterInListService admingoodsregisterinlistService;
	
	// 관리자 페이지) 상품입고 페이지로 이동
	@GetMapping(path = {"/admin-goods-register-in-list.action"})
	public String adminGoodsRegisterInList(Model model) {
		
		List<GoodsRegisterDto> goodsregisters = admingoodsregisterinlistService.findGoodsInList();
		
		model.addAttribute("goodsregisters", goodsregisters);
		
		return "admingoods/admin-goods-register-in-list";
	}

	
	
}