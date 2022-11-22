package com.campus.dto;

import lombok.Data;

@Data
public class CartDto {

	private int cartNo;
	private String memberId;
	private int amount;
	private int price;
	private int goodsCode;
	
	private GoodsDto goods;
	
	
}
