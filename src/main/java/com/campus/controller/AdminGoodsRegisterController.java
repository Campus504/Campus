package com.campus.controller;

import com.campus.dto.GoodsDto;
import com.campus.mapper.AdminGoodsRegisterMapper;
import com.campus.service.AdminGoodsRegisterService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminGoodsRegisterController {
	
	@Autowired
	private AdminGoodsRegisterMapper admingoodsregisterMapper;

	// 관리자페이지) 상품등록 페이지 맵핑
	@GetMapping(path = {"admin-goods-register.action"})
	public String adminGoodsRegister() {
		
		return "admingoods/admin-goods-register";
	}
	
	// 관리자페이지) 상품등록 후 상품목록에서 데이터 불러오기
//	@GetMapping(path = { "/admin-goods-list.action" })
//	public String showGoodsList(@RequestParam(defaultValue = "1") int goodsCode, Model model) {
//		
		// 1. 요청 데이터 읽기 ( 전달 인자로 대체 )
		
		// 2. 데이터 처리 ( 데이터 조회 )
//		AdminGoodsRegisterService.findGoodsByAll(int GoodsCode, String category, String brand, String goodsName);

		// 3. View에서 사용할 수 있도록 데이터 전달
//		model.addAttribute("goodsCode", goodsCode);
//		model.addAttribute("category", category);
//		model.addAttribute("brand", brand);
//		model.addAttribute("goodsName", goodsName);


		// 4. View 또는 다른 Controller로 이동		
//		return "admin-goods-list.action";
//		
//	}
	
	// 상품등록 버튼 클릭 시 상품정보 데이터베이스에 저장
//	@PostMapping(path= { "admin-goods-register.action" })
//	public String addGoods(GoodsDto goods, Model model, AdminGoodsRegisterService admingoodsregisterService) {
//		
//		// 1. 요청 데이터 읽기 -> DTO에 저장 : 전달인자 사용으로 대체
//		System.out.println(goods);
//		System.out.printf("상품 저장 완료");
//		
//		// 2. 요청 처리
////		admingoodsregisterService.addGoods();
//		
//		// 3. View에서 사용할 수 있도록 데이터 전달
//		
//		// 4. View 또는 다른 Controller로 이동		
//		return "redirect:admin-goods-register.action";
//	}
	
}