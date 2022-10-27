package com.campus.service;

import com.campus.common.Util;
import com.campus.dto.MemberDto;
import com.campus.mapper.MemberMapper;

import lombok.Setter;

public class AccountServiceImpl implements AccountService {
	
	@Setter
	private MemberMapper memberMapper;
	
	// 1. 회원 가입 : 회원 데이터를 받아서 필요한 처리 ( 데이터베이스 저장은 Dao에 전달 )
	@Override
	public void registerMember(MemberDto member) {
		
		String passwd = Util.getHashedString(member.getPasswd(), "SHA-256");
		member.setPasswd(passwd); // 암호화된 패스워드를 멤버에 저장
		memberMapper.insertMember(member);
		
	}
	
	// 2. 로그인 : 아이디, 패스워드를 받아서 데이터베이스 조회 후 결과 반환
	@Override
	public MemberDto findMemberByIdAndPasswd(String memberId, String passwd) {
		
		passwd = Util.getHashedString(passwd, "SHA-256");
		MemberDto memberDto = memberMapper.selectMemberByIdAndPasswd(memberId, passwd);
		return memberDto;
		
	}

}
