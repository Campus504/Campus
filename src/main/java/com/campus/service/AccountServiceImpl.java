package com.campus.service;

import java.util.List;

import com.campus.common.Util;
import com.campus.dto.BoardDto;
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
		
		List<MemberDto> members = memberMapper.selectMemberBySearch(search);
		
		return members;
	}
	
	@Override
	public int findMemberCount() {

		int memberCount = memberMapper.selectMemberCount();
		
		return memberCount;
	}
	
	@Override
	public List<MemberDto> findMemberByPage(int pageNo, int pageSize) {
		
		int from = (pageNo-1)*pageSize;
		int count = pageSize;
		List<MemberDto> boards = memberMapper.selectMemberByPage(from, count);
		return boards;
	}
}
