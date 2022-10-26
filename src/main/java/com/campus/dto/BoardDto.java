package com.campus.dto;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class BoardDto {
	
	private int boardNo;
	private String title;
	private String content;
	private Date writeDate;
	private int readCount;
	private String categry;
	private String memberId;
	
	private List<CommunityDto> tags;

}
