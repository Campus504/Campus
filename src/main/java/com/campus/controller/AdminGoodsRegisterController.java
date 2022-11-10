package com.campus.controller;

import com.campus.dto.GoodsDto;
import com.campus.dto.GoodsOptionDto;
import com.campus.dto.GoodsOptionSeletionDto;
import com.campus.service.AdminGoodsRegisterService;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
//@RequestMapping(path = { "/admingoods" })
public class AdminGoodsRegisterController {
	
//	private final int PAGE_SIZE = 30; // 한 페이지에 표시 되는 데이터 개수
	
	@Autowired
	@Qualifier("admingoodsregisterService")
	private AdminGoodsRegisterService admingoodsregisterService;

	// 관리자 페이지) 상품등록 페이지 이동
	@GetMapping(path = {"admin-goods-register.action"})
	public String adminGoodsRegister(GoodsDto goods, GoodsOptionDto goodsoption, GoodsOptionSeletionDto goodsoptionseletion) {
		
		return "admingoods/admin-goods-register";
	}
	
	// 관리자페이지) 상품 등록 정보 와 옵션 내용을 서버에 저장
	@PostMapping(path = { "register-goods" })
	@ResponseBody
	public String register(GoodsDto goods, String[] optionInputs, Model model) {		
		
		System.out.println("상품 정보 저장 완료");
		
		if (optionInputs != null) {
			ArrayList<GoodsOptionDto> optionDtos = new ArrayList<>();
			String[] opt = optionInputs[0].split(",");
			if (opt.length == 1) {
				GoodsOptionDto optionDto = new GoodsOptionDto();
				optionDto.setOptionName(optionInputs[0]);
				optionDto.setOptionDataType(optionInputs[1]);
				optionDto.setOptionValue(optionInputs[2]);
				optionDto.setOptionDesc(optionInputs[3]);
				optionDtos.add(optionDto);
			} else {
				// 상품기본정보, 상품옵션 ( 이름, 자료형, 값, 설명 )
				for (String option : optionInputs) {
					String[] list = option.split(",");
					GoodsOptionDto optionDto = new GoodsOptionDto();
					optionDto.setOptionName(list[0]);
					optionDto.setOptionDataType(list[1]);
					optionDto.setOptionValue(list[2]);
					optionDto.setOptionDesc(list[3]);
					optionDtos.add(optionDto);
				}
				goods.setOptions(optionDtos);
			}
		}
		
		// 요청 처리 : 데이터베이스에 데이터 저장 
		admingoodsregisterService.adminGoodsRegister(goods);
		admingoodsregisterService.adminGoodsOptionRegister(optionInputs);
		
		// View에서 사용할 수 있도록 데이터 전달
		model.addAttribute("goods", goods);
		model.addAttribute("optionInputs", optionInputs);
		
		return "admingoods/admin-goods-register";  // success  //  admingoods/admin-goods-register
	}
	
	// 관리자페이지) 상품등록 정보 와 옵션 내용들을 GoodsDto, GoodsOptionDto, GoodsOptionSeletionDto 에 담아 데이터 서버에 저장
//	@PostMapping(path = { "admin-goods-register.action" })
//	public String register(@Valid GoodsDto goods,  GoodsOptionDto goodsoption, GoodsOptionSeletionDto goodsoptionselection, Model model) {		
//		
//		// 1. 요청 데이터 읽기 -> DTO에 저장 : 전달인자 사용으로 대체
//		
//		// 2. 요청 처리
//		
//		// 3. View에서 사용할 수 있도록 데이터 전달
//		
//		// 4. View 또는 다른 Controller로 이동
//		return null;
//	}
		
	
}