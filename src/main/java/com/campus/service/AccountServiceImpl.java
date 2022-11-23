package com.campus.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import com.campus.common.Util;
import com.campus.dto.BoardDto;
import com.campus.dto.MemberDto;
import com.campus.dto.OrderListDto;
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

	public void updateMember(MemberDto member) {
		String passwd = Util.getHashedString(member.getPasswd(), "SHA-256");
		member.setPasswd(passwd);
		memberMapper.updateMember(member);
	}

	@Override
	public MemberDto selectMemberInfo(String memberId) {

		MemberDto member = memberMapper.selectMemberById(memberId);
		return member;

	}

	public int findMemberCount() {

		int memberCount = memberMapper.selectMemberCount();

		return memberCount;
	}

	@Override
	public List<MemberDto> findMemberByPage(int pageNo, int pageSize) {

		int from = (pageNo - 1) * pageSize;
		int count = pageSize;
		List<MemberDto> boards = memberMapper.selectMemberByPage(from, count);
		return boards;
	}

//	@Override
//	public List<MemberDto> findMemberByPage(String searchOption, String search, int pageNo, int pageSize) {
//		int from = (pageNo - 1) * pageSize;
//		int count = pageSize;
//		List<MemberDto> members = memberMapper.selectMemberByPage(searchOption, search, from, count);
//
//		return members;
//	}

	
	//회원 정보수정
	@Override
	public void memberIdOverlap(String memberId, HttpServletResponse response) throws IOException {
		MemberDto member = new MemberDto();
		member = (MemberDto) memberMapper.memberByIdOverlap(memberId);
		if(member == null) {
			//dao에서 select이 되지 않아야 true
			//id가 없어야 true(사용 가능)
			response.getWriter().print("1");
		}else {
			//id가 있으면 false(중복으로 사용 불가능)
			response.getWriter().print("0");
		
	}
}
	public MemberDto findMemberIdOverlap(String memberId) {
		
		return memberMapper.memberByIdOverlap(memberId);
	}

	//비밀번호 수정
	@Override
	public MemberDto selectMemberPasswd(String memberId)throws Exception{
		 return memberMapper.selectMemberPasswd(memberId);
	}
	@Override
	public void updatePasswd(MemberDto member)throws Exception {
		String passwd = Util.getHashedString(member.getPasswd(), "SHA-256");
		member.setPasswd(passwd);
		memberMapper.updatePasswd(member);
		
	}
	
	//회원 탈퇴
	@Override
	public void memberDelete(MemberDto memberDto) throws Exception {
		memberMapper.memberDelete(memberDto);
	}

	public void deleteByMember(MemberDto member) {
		memberMapper.memberDelete(member);
	}

	@Override
	public List<BoardDto> findAllBoardByMemberId(String memberId) {
		List<BoardDto> boards = memberMapper.selectAllBoardByMemberId(memberId);
		return boards;
	}

	@Override
	public MemberDto viewMember(String memberId) {
		MemberDto member = memberMapper.selectMemberByMemberId(memberId);
		return member;
	}

	@Override
	public void adminchange(String memberId) {
		
		memberMapper.updateAdmin(memberId);
		
	}


	@Override
	public void memberChange(String memberId) {
		
		memberMapper.updateMember2(memberId);
		
	}

	@Override
	public void boardDeleted(int boardNo) {
		
		memberMapper.boardDeleted(boardNo);
		
	}

	@Override
	public List<OrderListDto> selectMemberOrderList(String memberId) {
		List<OrderListDto> orders = memberMapper.selectOrderListByMemeber(memberId);
		return orders;
	}

}