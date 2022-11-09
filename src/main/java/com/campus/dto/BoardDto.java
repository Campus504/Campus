package com.campus.dto;

import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotBlank;

import lombok.Data;

@Data
public class BoardDto {
	
	private int boardNo;
	@NotBlank(message="제목을 입력하세요.")
	private String title;
	@NotBlank(message="내용을 입력하세요.")
	private String content;
	private Date writeDate;
	private int readCount;
	private String category;
	private String memberId;
	private boolean secret;
	
	private List<CommunityDto> tags;

}
