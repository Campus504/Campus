package com.campus.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.campus.dto.GoodsDto;
import com.campus.service.AdminGoodsRegisterListService;
import com.campus.service.AdminGoodsRegisterService;

@Controller
//@RequestMapping(path = { "/admingoods" })
public class AdminGoodsListController {

	private final int PAGE_SIZE = 30; // 한 페이지에 표시 되는 데이터 개수
	
	@Autowired
	@Qualifier("admingoodsregisterlistService")
	private AdminGoodsRegisterListService admingoodsregisterlistService;
	
	// 상품리스트 페이지로 이동
	@GetMapping(path = {"admin-goods-list.action"})
	public String adminGoodsList() {
		
		return "admingoods/admin-goods-list";
	}
	
	// 관리자페이지) 상품등록 후 상품목록에서 데이터 불러오기
	@PostMapping(path= { "admin-goods-list.action" })
	public String showgoodslist(@Valid GoodsDto goods, Model model) {
		
		// 1. 요청 데이터 읽기 -> DTO에 저장 : 전달인자 사용으로 대체
		System.out.println("상품 정보 리스트 불러오기 완료");
		
		// 2. 요청 처리
		GoodsDto goods1 = admingoodsregisterlistService.selectGoodsList(goods);
	
		// 3. View에서 사용할 수 있도록 데이터 전달
		model.addAttribute("goods", goods1);
//		model.addAttribute("category", category);
//		model.addAttribute("brand", brand);
//		model.addAttribute("goodsName", goodsName);
	
		// 4. View 또는 다른 Controller로 이동	
		return "admingoods/admin-goods-list";
		
	}
	
}