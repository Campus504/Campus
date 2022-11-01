package com.campus.service;

import com.campus.common.Util;
import com.campus.dto.MemberDto;
import com.campus.mapper.MemberMapper;

import lombok.Setter;

public class AccountServiceImpl implements AccountService {

	@Setter
	private MemberMapper memberMapper;

	// 회원 가입
	@Override
	public void registerMember(MemberDto member) {

		String passwd = Util.getHashedString(member.getPasswd(), "SHA-256");
		member.setPasswd(passwd);
		memberMapper.insertMember(member);

	}

	// 로그인
	@Override
	public MemberDto findMemberByIdAndPasswd(String memberId, String passwd) {

		/* passwd = Util.getHashedString(passwd, "SHA-256"); */
		MemberDto memberDto = memberMapper.selectMemberByIdAndPasswd(memberId, passwd);
		return memberDto;

	}

}
