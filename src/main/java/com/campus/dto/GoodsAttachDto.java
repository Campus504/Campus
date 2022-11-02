package com.campus.dto;

import java.util.Date;

import lombok.Data;

@Data
public class GoodsAttachDto {

	// 상품 첨부 파일 Dto - goodsattach Table
	private int attachNo;			// 첨부파일번호
	private String fileName;		// 첨부파일이름
	private String savedName;		// 저장된이름
	private int goodsCode;			// 상품코드
	
}