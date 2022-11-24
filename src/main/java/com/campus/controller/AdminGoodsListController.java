package com.campus.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	// 속성팝업) 옵션 삭제
	@GetMapping(path = { "delete-goods-option.action" }) 
	public String deleteGoodsOption(@RequestParam(defaultValue = "0") int optionNo) {
		
		System.out.println("속성 삭제 시작합니다.");
		
		adminGoodsRegisterListService.deleteGoodsOption(optionNo);
		
		System.out.println("속성 삭제 종료합니다.");
		
		return "redirect:admin-goods-list.action";
		
	}
	
	// 속성팝업)옵션팝업) 옵션 수정 :	update-goods-option
	@PostMapping(path = { "update-goods-option.action" })
	@ResponseBody
	public String updateGoodsoption(GoodsOptionDto option) {
		
		System.out.println("옵션 수정 시작합니다.");

		adminGoodsRegisterListService.updateGoodsOption(option);
		
		System.out.println("옵션 수정 종료합니다.");
		
		return "success";
	}	
	
	// 상품삭제 클릭 시 deleted 상태 수정
	@GetMapping(path = {"/admin-goods-delete.action"})
	public String adminGoodsDelete(@RequestParam(defaultValue = "0") int goodsCode, Model model) {
		
		System.out.println("상품 Delete 상태 수정 시작합니다.");
		
		adminGoodsRegisterListService.deleteGoods(goodsCode);

		System.out.println("상품 Delete 상태 수정 완료합니다.");
		
		return "redirect:admin-goods-list.action";
		
	}
	
	// 상품삭제 클릭 시 Active 상태 수정
	@GetMapping(path = {"/admin-goods-active.action"})
	public String adminGoodActive(@RequestParam(defaultValue = "0") int goodsCode, Model model) {
		
		System.out.println("상품 Active 상태 수정 시작합니다.");
		
		adminGoodsRegisterListService.activeGoods(goodsCode);

		System.out.println("상품 Active 상태 수정 완료합니다.");
		
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
	@GetMapping(path= {"admin-goods-list-edit.action"})
	public String updateGoodsList(GoodsDto goods, Model model) {

		System.out.println("상품수정 페이지로 이동 시작합니다.");
		
		adminGoodsRegisterListService.findGoodsList(goods);

		model.addAttribute("goods", goods);
		
		System.out.println("상품수정 페이지로 종료 합니다.");
		
		return "admingoods/admin-goods-list-edit";
	}
	
}