package com.campus.dto;

import java.util.Date;

import lombok.Data;

@Data // 모든 변수에 대해 getter, setter 자동 생성, 기본 생성자, toString, ....
public class GoodsDto {
	
	// 상품 Dto
	private int goodsCode;						// 상품코드
	private String category;					// 상품분류
	private String brand;						// 브랜드
	private String goodsName;					// 상품명
	
	// 상품 속성 Dto
	private int optionNo;						// 속성번호
	private String optionName;					// 속성이름
	private String optionDesc;					// 속성설명
	private String optionDataType;				// 속성자료형
	private int optionValue;					// 속성값
	
	// 상품 속성 선택 Dto
	private int goodsOptionSeletionNo;			// 상품속성선택번호
	private String optionSeletionValue;			// 옵션값
	
	// 상품 등록 Dto
	private int inCode;							// 입고코드
	private String detail;						// 상세설명
	private int rentPrice;						// 대여가격
	private int goodsIn;						// 입고
	private Date goodsInDate;					// 입고일자

	// 상품 첨부 파일 Dto
	private int attachNo;						// 첨부파일번호
	private String fileName;					// 첨부파일이름
	private String savedName;					// 저장된이름
	
}