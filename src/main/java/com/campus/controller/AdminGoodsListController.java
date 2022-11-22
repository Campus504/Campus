package com.campus.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.campus.dto.GoodsDto;
import com.campus.dto.GoodsOptionDto;
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
		
		//List<GoodsOptionJoinDto> goods = adminGoodsRegisterListService.findGoodsJoinedList();
		List<GoodsDto> goods = adminGoodsRegisterListService.findAllGoods();
		
		model.addAttribute("goods", goods);
		
		System.out.println("상품리스트로 이동합니다.");
		
		return "admingoods/admin-goods-list";
	}
	
	// 옵션 팝업의 옵션내용 불러오기
	@GetMapping(path = {"load-goods-option-list.action"})
	public String loadGoodsOptionList(int goodsCode, Model model) {
		
		List<GoodsOptionDto> options = adminGoodsRegisterListService.findGoodsOptionsByGoodsCode(goodsCode);
		model.addAttribute("options", options);
		
		return "admingoods/goods-option-list";
	}
	
	// 옵션 팝업 옵션 삭제
	@GetMapping(path= {"delete-goods-option.action"}) 
	public String deleteGoodsOption(@RequestParam(defaultValue = "0") int optionNo) {
		
		System.out.println("옵션 삭제 시작합니다.");
		
		adminGoodsRegisterListService.deleteGoodsOption(optionNo);
		
		System.out.println("옵션 삭제 종료합니다.");
		
		return "redirect:admin-goods-list.action";
		
	}
	
	// 상품삭제 클릭 시 상태 수정
	@PostMapping(path = {"admin-goods-delete.action"})
	public String adminGoodsDelete(@RequestParam(defaultValue = "0") String status, Model model) {
		
		System.out.println("상품 상태 수정 시작합니다.");
		
		adminGoodsRegisterListService.deleteGoods(status);

		model.addAttribute("status", status);
		
		System.out.println("상품 상태 수정 종료합니다.");
		
		return "redirect:admin-goods-list.action";
		
	}
	
	// 상품리스트에서 검색
	@PostMapping(path= {"admin-goods-list-search.action"})
	public String adminGoodsSearch(@RequestParam(defaultValue = "") String search, Model model) {
	
		if(search == "") {
			return "redirect:admin-goods-list.action";
		}
		
		List<GoodsOptionJoinDto> goods = adminGoodsRegisterListService.adminGoodsListSearch(search);
		model.addAttribute("goods", goods);
		
		System.out.println("상품 정보를 가져옵니다.");
		
		return "admingoods/admin-goods-list-search";
	}
	
	// 상품 정보 수정 페이지로 이동
	@GetMapping(path= {"admin-goods-edit.action"})
	public String adminGoodsEdit(@RequestParam(defaultValue = "0") int goodsCode, Model model) {

		if(goodsCode == 0) {
			return "redirect:admin-goods-list.action";
		}
		
		List<GoodsOptionJoinDto> goods = adminGoodsRegisterListService.findAdminGoodsByGoodsCode(goodsCode);
		model.addAttribute("goods", goods);
		
		System.out.println("상품 정보 수정페이지로 이동합니다.");
		
		return "admingoods/admin-goods-list-edit";
	}
	
	// 상품 정보 수정 기능
	@PostMapping(path = { "admin-goods-edit.action" })
	public String goodsEdit(GoodsOptionJoinDto goods, @RequestParam(defaultValue = "1") int goodsCode, Model model) {
		
		System.out.println("상품 정보 수정 시작합니다.");
		
		adminGoodsRegisterListService.updategoodslist(goods);
		
		model.addAttribute("goods", goods);
		
		System.out.println("상품 정보 수정을 완료합니다.");
		
		return "redirect:admingoods/admin-goods-list";
		
	}
	
	
}