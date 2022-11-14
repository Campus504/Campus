package com.campus.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class CartDto {

	private String memberId;
	private Date rentDate;
	private Date returnDate;
	
}
