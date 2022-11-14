package com.campus.dto;

import java.util.List;

import lombok.Data;

@Data
public class OrderListDto {
	
	private int orderNo;
	private String orderDate;
	private String returnDate;
	private String rentDate;
	private String pay;
	private String memberId;
	
	List<OrderDetailDto> orderDetails;

}
