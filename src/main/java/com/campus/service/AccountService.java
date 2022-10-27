package com.campus.service;

import com.campus.dto.MemberDto;

public interface AccountService {

	void registerMember(MemberDto member);
	MemberDto findMemberByIdAndPasswd(String memberId, String passwd);

}
