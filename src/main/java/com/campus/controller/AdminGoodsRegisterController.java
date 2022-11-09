package com.campus.controller;

import com.campus.dto.GoodsDto;
import com.campus.dto.GoodsOptionDto;
import com.campus.dto.GoodsOptionSeletionDto;
import com.campus.service.AdminGoodsRegisterService;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;



@Controller
//@RequestMapping(path = { "/admingoods" })
public class AdminGoodsRegisterController {
	
	private final int PAGE_SIZE = 30; // 한 페이지에 표시 되는 데이터 개수
	
	@Autowired
	@Qualifier("admingoodsregisterService")
	private AdminGoodsRegisterService admingoodsregisterService;

	// 관리자 페이지) 상품등록 페이지 이동
	@GetMapping(path = {"admin-goods-register.action"})
	public String adminGoodsRegister(GoodsDto goods, GoodsOptionDto goodsoption, GoodsOptionSeletionDto goodsoptionseletion) {
		
		return "admingoods/admin-goods-register";
	}
	
	// 관리자페이지) 상품등록 버튼 클릭 시 GoodsDto 상품정보 데이터베이스에 저장
	@PostMapping(path = { "admin-goods-register.action" })
	public String register(@Valid GoodsDto goods,  GoodsOptionDto goodsoption, GoodsOptionSeletionDto goodsoptionselection, Model model) {		
		
		// 1. 요청 데이터 읽기 -> DTO에 저장 : 전달인자 사용으로 대체
		System.out.println("상품 정보 저장 완료");
		
		// 2. 요청 처리
		admingoodsregisterService.adminGoodsRegister(goods);
		admingoodsregisterService.adminGoodsOption(goodsoption);
		admingoodsregisterService.adminGoodsOptionSelection(goodsoptionselection);
		
		// 3. View에서 사용할 수 있도록 데이터 전달
		model.addAttribute("goods", goods);
		model.addAttribute("goodsoption", goodsoption);
		model.addAttribute("goodsoptionseletion", goodsoptionselection);
		
		// 4. View 또는 다른 Controller로 이동
		return "admingoods/admin-goods-register";
	}
	
	
}