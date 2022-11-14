package com.campus.dto;

import lombok.Data;

@Data
public class GoodsOptionJoinDto {
	
	private int goodsCode;			// 상품코드 / 자동증가
	private String category;		// 상품분류
	private String brand;			// 브랜드
	private String goodsName;		// 상품명
	
	private int optionNo;					// 속성번호
	private String optionName;				// 속성이름
	private String optionDataType;			// 속성자료형
	private String optionValue;				// 속성값
	private String optionDesc;				// 속성설명
	
	private String optionSeletionValue;			// 옵션값
	private int goodsOptionSeletionNo;			// 상품속성선택번호

}
