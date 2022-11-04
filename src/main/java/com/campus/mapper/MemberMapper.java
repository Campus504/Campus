package com.campus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.campus.dto.BoardDto;
import com.campus.dto.MemberDto;

@Mapper
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
<<<<<<< HEAD

	@Update("UPDATE member" + 
			"SET passwd = #{ passwd } , email = #{ email } , membername = #{ memberName } , address = #{address} , birth = #{birth} , phone = #{ phone } " +
			"WHERE memberid = #{ memberId } " )
	void updateMember(MemberDto member);
				
	
=======
	
	@Select("SELECT count(*) FROM member")
	int selectMemberCount();
	
	@Select("SELECT memberid, email, membername, address, birth, phone, active, joindate, admin FROM member ORDER BY joindate DESC LIMIT ${from}, ${count}")
	List<MemberDto> selectMemberByPage(@Param("from") int from, @Param("count") int count);
>>>>>>> c0fb9f071bff89261d33373c968ced1bca1e4e17
}
