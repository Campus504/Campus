package com.campus.dto;

import java.util.Date;

import lombok.Data;

@Data
public class BoardCommentDto {
	
	private int commentNo;
	private String content;
	private Date writeDate;
	private int commentGroup; // 원 댓글 번호
	private int depth; // 들여쓰기 정도
	private int step; // 댓글 그룹 내에서 순서
	private int boardNo;
	private String memberId;
	

}
