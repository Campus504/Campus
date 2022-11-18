package com.campus.dto;

import java.sql.Date;
import java.util.List;

import lombok.Data;

@Data
public class CartDto {

	private String memberId;
	private int amount;
	private int price;
	private int goodsCode;
		
	private GoodsDto goods;
	
}
