package com.campus.dto;

import java.util.Date;

import lombok.Data;

@Data
public class GoodsOptionDto {
	
	// 상품 속성 Dto - goodsOption Table
	private int optionNo;					// 속성번호
	private String optionName;				// 속성이름
	private String optionDesc;				// 속성설명
	private int goodsCode;					// 상품코드
	private String optionDataType;			// 속성자료형
	private int optionValue;				// 속성값
	
}