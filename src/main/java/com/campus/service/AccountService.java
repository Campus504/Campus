package com.campus.service;

import java.util.List;

import com.campus.dto.MemberDto;

public interface AccountService {

	void registerMember(MemberDto member);
	
	MemberDto findMemberByIdAndPasswd(String memberId, String passwd);
	
	List<MemberDto> searchMember(String search);

<<<<<<< HEAD
	void updateMember(MemberDto member);

	MemberDto selectMemberInfo(String memberId);
=======
	List<MemberDto> findMemberByPage(int pageNo, int pageSize);

	int findMemberCount();
>>>>>>> c0fb9f071bff89261d33373c968ced1bca1e4e17

}
