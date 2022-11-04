package com.campus.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.campus.dto.GoodsDto;
import com.campus.mapper.AdminGoodsRegisterMapper;
import com.campus.service.AdminGoodsRegisterService;

@Controller
public class AdminGoodsRegisterController {
	
	@Autowired
	private AdminGoodsRegisterMapper admingoodsregisterMapper;
	
	// 상품등록 페이지로 이동
	@GetMapping(path = {"admin-goods-register.action"})
	public String adminGoodsRegister() {
		
		return "admingoods/admin-goods-register";
	}
	
	// 상품등록 버튼 클릭 시 상품정보 데이터베이스에 저장
	@PostMapping(path= { "admingoodsregister.action" })
	public String insertGoods(GoodsDto goods) {
		
		// 1. 요청 데이터 읽기 -> DTO에 저장 : 전달인자 사용으로 대체
		System.out.println(goods);
		
		// 2. 요청 처리
		
		// 3. View에서 사용할 수 있도록 데이터 전달
		
		// 4. View 또는 다른 Controller로 이동		
		return "redirect:admin-goods-register.action";
	}
	
}