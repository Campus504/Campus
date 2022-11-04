package com.campus.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

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

		passwd = Util.getHashedString(passwd, "SHA-256");
		MemberDto memberDto = memberMapper.selectMemberByIdAndPasswd(memberId, passwd);
		return memberDto;

	}
	
	@Override
	public List<MemberDto> searchMember(String search) {
		System.out.println("s:"+search);
		List<MemberDto> members = memberMapper.selectMemberBySearch(search);
		
		return members;
	}
	
	@Override
	public void updateMember(MemberDto member) {
		memberMapper.updateMember(member);
	}

	@Override
	public MemberDto selectMemberInfo(String memberId) {
		
		return null;
	}
	
	
}
