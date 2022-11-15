package com.campus.dto;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class GoodsRegisterDto {
	
	// 상품 등록 Dto - goodsRegister Table
	private int inCode;				// *입고코드
	
	private String detail;			// 상세설명
	private int rentPrice;			// 대여가격
	private int goodsIn;			// 입고수량
	private Date goodsInDate;		// 입고일자
	
	private int goodsCode;			// *상품코드
	
	private List<GoodsRegisterDto> goodsregisters;
	
}