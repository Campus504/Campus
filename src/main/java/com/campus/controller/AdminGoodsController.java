package com.campus.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.campus.dto.GoodsDto;

import com.campus.service.AdminGoodsRegisterService;

@Controller
public class AdminGoodsController {
	
	// 상품등록 페이지로 이동
	@GetMapping(path = {"admin-goods-register.action"})
	public String adminGoodsRegister() {
		
		return "admingoods/admin-goods-register";
	}
	
	// 상품입고 페이지로 이동
	@GetMapping(path = {"admin-goods-in.action"})
	public String adminGoodsIn() {
		
		return "admingoods/admin-goods-in";
	}
	
	// 상품리스트 페이지로 이동
	@GetMapping(path = {"admin-goods-list.action"})
	public String adminGoodsList() {
		
		return "admingoods/admin-goods-list";
	}
	
}