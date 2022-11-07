package com.campus.service;

import java.io.IOException;
import java.sql.SQLData;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.javassist.compiler.ast.Member;
import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;

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

	public void updateMember(MemberDto member) {
		memberMapper.updateMember(member);
	}

	@Override
	public MemberDto selectMemberInfo(String memberId) {
<<<<<<< HEAD

		return null;
=======
		MemberDto member = memberMapper.selectMemberById(memberId);
		return member;
>>>>>>> 04c9fb5ef05350986c6172f54f1ae5b70997cb70
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

<<<<<<< HEAD
//	@Override
//	public List<MemberDto> findMemberByPage(String searchOption, String search, int pageNo, int pageSize) {
//		int from = (pageNo - 1) * pageSize;
//		int count = pageSize;
//		List<MemberDto> members = memberMapper.selectMemberByPage(searchOption, search, from, count);
//
//		return members;
//	}

=======
	@Override
	public void memberIdOverlap(String memberId, HttpServletResponse response) throws IOException {
		MemberDto member = new MemberDto();
		member = (MemberDto) memberMapper.memberIdOverlap(memberId);
		if(member == null) {
			//dao에서 select이 되지 않아야 true
			//id가 없어야 true(사용 가능)
			response.getWriter().print("1");
		}else {
			//id가 있으면 false(중복으로 사용 불가능)
			response.getWriter().print("0");
		
	}
		
		
>>>>>>> 04c9fb5ef05350986c6172f54f1ae5b70997cb70
}
	public MemberDto memberIdOverlap(String memberId) {
		
		
		return memberMapper.memberIdOverlap(memberId);
	}

}

