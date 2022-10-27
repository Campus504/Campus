package com.campus.dto;

import java.util.Date;

import lombok.Data;

@Data // 모든 변수에 대해 getter, setter 자동 생성, 기본 생성자, toString, ....
public class MemberDto {
	
	private String memberId;
	private String passwd;
	private String email;
	private String memberName;
	private String address;
	private String gender;
	private Date birth;
	private String phone;
	private boolean active;
	private Date joinDate;
	private boolean admin;

}

