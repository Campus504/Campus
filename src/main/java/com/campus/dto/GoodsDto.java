package com.campus.dto;

import java.util.Date;

import lombok.Data;

@Data
public class GoodsDto {
	
	// 상품 Dto - goods Table
	private int goodsCode;			// 상품코드
	private String category;		// 상품분류
	private String brand;			// 브랜드
	private String goodsName;		// 상품명
		
}