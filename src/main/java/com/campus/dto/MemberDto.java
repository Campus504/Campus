package com.campus.dto;

import java.util.Date;

import lombok.Data;

@Data 
public class MemberDto {
	
	private String memberId;
	private String passwd;
	private String email;
	
	private String memberName;
	private String address;
	private String birth;
	private String phone;
	private boolean active;
	private Date joinDate;
	private String admin;

}

