package com.campus.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.campus.dto.GoodsAttachDto;
import com.campus.dto.GoodsDto;
import com.campus.dto.GoodsOptionDto;
import com.campus.dto.GoodsOptionSeletionDto;
import com.campus.dto.GoodsRegisterDto;
import com.campus.service.GoodsRegisterService;

@Controller
public class AdminGoodsRegisterController {

	@GetMapping(path = {"/admin-goods-register.action"})
	public String adminGoodsRegister() {
		
		return "admin-goods-register";	// 상품 등록 페이지로 가기
	}
	
	@PostMapping(path = {"/admin-goods-register.action"})
	public String adminGoodsRegisterFrom(GoodsDto goods, GoodsOptionDto goodsoption, GoodsOptionSeletionDto goodsoptionseletion, GoodsRegisterDto goodsregister, GoodsAttachDto goodsattach) {
	

		return "admin-goods-register"; // 상품 등록 페이지로 가기
	}
	
}