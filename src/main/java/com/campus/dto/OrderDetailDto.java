package com.campus.dto;

import lombok.Data;

@Data
public class OrderDetailDto {
	
	private int orderNo;
	private int goodsCode;
	private int amount;
	private int price;

}
