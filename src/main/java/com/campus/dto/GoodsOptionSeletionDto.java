package com.campus.dto;

import java.util.Date;

import lombok.Data;

@Data
public class GoodsOptionSeletionDto {
	
	// 상품 속성 선택 Dto - goodsOptionSeletion Table
	private String optionSeletionValue;			// 옵션값
	
	private int optionNo;						// 속성번호	
	private int goodsOptionSeletionNo;			// 상품속성선택번호
	
	
}