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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
//@RequestMapping(path = { "/admingoods" })
public class AdminGoodsRegisterController {
	
//	private final int PAGE_SIZE = 30; // 한 페이지에 표시 되는 데이터 개수
	
	@Autowired
	@Qualifier("admingoodsregisterService")
	private AdminGoodsRegisterService adminGoodsRegisterService;

	// 관리자 페이지) 상품등록 페이지 이동
	@GetMapping(path = {"admin-goods-register.action"})
	public String adminGoodsRegister(GoodsDto goods, String[] optionInputs) {
		
		return "admingoods/admin-goods-register";
	}
	
	// 관리자페이지) 상품 등록 정보 와 옵션 내용을 서버에 저장
	@PostMapping(path = { "admin-goods-register.action" })
//	@ResponseBody  // 리턴값에 입력 된 문자열을 그대로 실행하도록 하는 어노테이션
	public String register(GoodsDto goods, String[] optionInputs, Model model) {		
		
		System.out.println("상품 정보 저장 시작");
		
		// 상품기본정보, 상품옵션 ( 이름, 자료형, 값, 설명 )
		if (optionInputs != null) {										//  optionInputs 의 값이 null이 아닌게 맞을 경우 실
			ArrayList<GoodsOptionDto> optionDtos = new ArrayList<>();	//	GoodsOptionDto의 데이터를 리스트화해서 optionDtos에 담기 
			String[] opt = optionInputs[0].split(",");					// 	String 배열의 opt내에 ","를 모두 제
			if (opt.length == 1) {										//	opt의 길이가 1과 같을때 이하 실행
				GoodsOptionDto optionDto = new GoodsOptionDto();		//  GoodsOptionDto를 담은 optionDto를 새로 생성
				optionDto.setOptionName(optionInputs[0]); 				// 	optionDto 내에 optionInputs[0]의 OptionName을 담기 
				optionDto.setOptionDataType(optionInputs[1]);			// 	optionDto 내에 optionInputs[1]의 OptionDataType을 담기
				optionDto.setOptionValue(optionInputs[2]);				// 	optionDto 내에 optionInputs[2]의 OptionValue을 담기
				optionDto.setOptionDesc(optionInputs[3]);				// 	optionDto 내에 optionInputs[3]의 OptionDesc을 담기
				optionDtos.add(optionDto);								//	담은 모든 내용을 optionDto에 모두 저장
			} else {													//  opt의 길이가 1과 같지 않을때 이하 실행
				for (String option : optionInputs) {					//  이하 내용 리딩 필요  
					String[] list = option.split(",");					//	String 배열의 list 내에 "," 제거 
					GoodsOptionDto optionDto = new GoodsOptionDto();	//  GoodsOptionDto를 담은 optionDto를 새로 생성
					optionDto.setOptionName(list[0]);					//
					optionDto.setOptionDataType(list[1]);				//
					optionDto.setOptionValue(list[2]);					//
					optionDto.setOptionDesc(list[3]);					//
					optionDtos.add(optionDto);							//
				}
				
			}
			       goods.setOptions(optionDtos);
		}
		
		System.out.println("상품 정보 저장 완료");
		
	// 요청 처리 : 데이터베이스에 데이터 저장 
		adminGoodsRegisterService.adminGoodsRegister(goods);
	// admingoodsregisterService.adminGoodsOptionRegister(optionInputs);
	
	// View에서 사용할 수 있도록 데이터 전달
		model.addAttribute("goods", goods);
		model.addAttribute("optionInputs", optionInputs);

		return "redirect:admin-goods-register.action";
	}

	
}