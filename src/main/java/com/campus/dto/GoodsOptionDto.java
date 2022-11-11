package com.campus.dto;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class GoodsOptionDto {
	
	// 상품 속성 Dto - goodsOption Table
	private int optionNo;					// 속성번호
	
	private int goodsCode;					// 상품코드
	
	private String optionName;				// 속성이름
	private String optionDataType;			// 속성자료형
	private String optionValue;				// 속성값
	private String optionDesc;				// 속성설명
	
	private List<GoodsOptionDto> options;	// 속성 리스트로 만들기

	
}