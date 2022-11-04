package com.campus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.campus.dto.BoardDto;
import com.campus.dto.MemberDto;

public interface MemberMapper {
	
	@Insert("INSERT INTO member (memberid, passwd, email, membername, address, birth, phone) " +
			"VALUES (#{ memberId }, #{ passwd }, #{ email }, #{ memberName }, #{ address }, #{ birth }, #{ phone })")
	void insertMember(MemberDto member);
	
	@Select("SELECT memberid, email, membername, address, birth, phone, active, joindate, admin " +
			"FROM member " +
			"WHERE memberid = #{ memberId } AND passwd = #{ passwd } AND active = TRUE ")
	MemberDto selectMemberByIdAndPasswd(@Param("memberId")String memberId, @Param("passwd") String passwd);
	
	@Select("select * from member WHERE memberid like '%${search}%'")
	List<MemberDto> selectMemberBySearch(String search);
	
	@Select("SELECT count(*) FROM member")
	int selectMemberCount();
	
	@Select("SELECT memberid, email, membername, address, birth, phone, active, joindate, admin FROM member ORDER BY joindate DESC LIMIT ${from}, ${count}")
	List<MemberDto> selectMemberByPage(@Param("from") int from, @Param("count") int count);
}
