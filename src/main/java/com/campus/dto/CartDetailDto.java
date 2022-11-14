package com.campus.dto;

import lombok.Data;

@Data
public class CartDetailDto {

	private String memberId; 	//주문자
	private int goodsCode;		//상품코드
	private int amount;  		//수량
	private int price;			//가격
	
	
}
