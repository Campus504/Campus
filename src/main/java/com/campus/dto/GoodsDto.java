package com.campus.dto;

import java.util.List;

import lombok.Data;

@Data
public class GoodsDto {
	
	// 상품 Dto - goods Table     
	private int goodsCode;			// 상품코드 / 자동증가
	
	private String category;		// 상품분류
	private String brand;			// 브랜드
	private String goodsName;		// 상품명
	private String status;			// 상품 상태 (대여가능, 삭제, .... )
	
	private List<GoodsOptionDto> options;
	
}
