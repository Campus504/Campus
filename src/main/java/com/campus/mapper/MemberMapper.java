package com.campus.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.campus.dto.MemberDto;

@Mapper // mapper interface 구현 객체 생성 자동으로 처리
public interface MemberMapper {
	
	@Insert("INSERT INTO member (memberid, passwd, email, membername, address, gender, birth, phone) " +
			"VALUES (#{ memberId }, #{ passwd }, #{ email }, #{ memberName }, #{ address }, #{ gender }, #{ birth }, #{ phone }")
	void insertMember(MemberDto member);
	
	@Select("SELECT memberid, email, membername, address, gender, birth, phone, active, joindate, admin " +
			"FROM member " +
			"WHERE memberid = #{ memberId } AND passwd = #{ passwd } AND active = TRUE ")
	MemberDto selectMemberByIdAndPasswd(@Param("memberId")String memberId, @Param("passwd") String passwd);
	
	

}
