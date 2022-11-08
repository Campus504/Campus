package com.campus.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.campus.dto.GoodsDto;
import com.campus.dto.GoodsRegisterDto;
import com.campus.service.AdminGoodsRegisterService;
import com.campus.service.AdminGoodsRegisterInService;

@Controller
public class AdminGoodsInController {
	
	private final int PAGE_SIZE = 30; // 한 페이지에 표시 되는 데이터 개수
	
	@Autowired
	@Qualifier("admingoodsregisterinService")
	private AdminGoodsRegisterInService admingoodsregisterinService;
	
	// 관리자 페이지) 상품입고 페이지로 이동
	@GetMapping(path = {"/admin-goods-register-in.action"})
	public String adminGoodsRegisterIn(GoodsRegisterDto goodsregister) {
		
		return "admingoods/admin-goods-register-in";
	}

	// 관리자페이지) 입고등록 버튼 클릭 시 GoodsRegisterDto 상품등록(입고) 테이블에 데이터 저장
	@PostMapping(path = { "/admin-goods-register-in.action" })
	public String registerin(@Valid GoodsRegisterDto goodsregister, Model model) {		
		
		// 1. 요청 데이터 읽기 -> DTO에 저장 : 전달인자 사용으로 대체
		System.out.println("입고 상품 저장 완료");
		
		// 2. 요청 처리
		admingoodsregisterinService.adminGoodsRegisterIn(goodsregister);
	
		// 3. View에서 사용할 수 있도록 데이터 전달
		model.addAttribute("goodsregister", goodsregister);
	
		// 4. View 또는 다른 Controller로 이동
		return "admingoods/admin-goods-register-in";
		
	}
	
	// 관리자페이지) 입고등록 후 입고목록에서 데이터 불러오기
	
	
}