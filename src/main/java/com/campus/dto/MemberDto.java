package com.campus.dto;

import java.util.Date;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

import lombok.Data;

@Data 
public class MemberDto {
	
	@NotBlank(message="아이디를 입력하세요.")
	private String memberId;
	@NotBlank(message="패스워드를 입력하세요.")
	private String passwd;
	@NotBlank(message="이메일을 입력하세요.")
	@Email
	private String email;
	
	private String memberName;
	private String address;
	@NotBlank(message="생년월일을 입력하세요.")
	private String birth;
	@NotBlank(message="전화번호를 입력하세요.")
	private String phone;
	private boolean active;
	private Date joinDate;
	private String admin;

}

