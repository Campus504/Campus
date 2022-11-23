package com.campus.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import com.campus.dto.BoardDto;
import com.campus.dto.MemberDto;
import com.campus.dto.OrderListDto;

public interface AccountService {

	void registerMember(MemberDto member);
	
	MemberDto findMemberByIdAndPasswd(String memberId, String passwd);
	
	List<MemberDto> searchMember(String search);


	void updateMember(MemberDto member);

	MemberDto selectMemberInfo(String memberId);

	List<MemberDto> findMemberByPage(int pageNo, int pageSize);

	int findMemberCount();

	void memberIdOverlap(String memberId, HttpServletResponse response) throws IOException;

	public void memberDelete(MemberDto memberDto)throws Exception;

	void deleteByMember(MemberDto member);

	MemberDto selectMemberPasswd(String memberId) throws Exception;

	void updatePasswd(MemberDto member) throws Exception;

	List<BoardDto> findAllBoardByMemberId(String memberId);

	MemberDto viewMember(String memberId);

	void adminchange(String memberId);

	void memberChange(String memberId);

	void boardDeleted(int boardNo);

	List<OrderListDto> selectMemberOrderList(String memberId);


}
