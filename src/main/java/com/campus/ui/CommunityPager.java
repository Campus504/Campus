package com.campus.ui;

import lombok.Data;

@Data
public class CommunityPager {
	
	private int pageSize;//한 페이지당 데이터 개수
	private int boardCount;//총 데이터 수
	
	private int pageNo;//현재 페이지 번호
	private int pageCount;//총 페이지 수
	
	
	public CommunityPager(int boardCount, int pageNo, 
		int pageSize) {
		
		this.boardCount = boardCount;
		this.pageSize = pageSize;
		this.pageNo = pageNo;		
		pageCount = 
			(boardCount / pageSize) + ((boardCount % pageSize) > 0 ? 1 : 0); 
	}
	
}

