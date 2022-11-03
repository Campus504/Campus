package com.campus.service;

import java.util.List;

import com.campus.dto.MemberDto;

public interface AccountService {

	void registerMember(MemberDto member);
	
	MemberDto findMemberByIdAndPasswd(String memberId, String passwd);
	
	List<MemberDto> searchMember(String search);

}
