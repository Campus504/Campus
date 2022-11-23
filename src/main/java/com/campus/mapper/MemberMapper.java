package com.campus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.campus.dto.BoardDto;
import com.campus.dto.MemberDto;
import com.campus.dto.OrderListDto;

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
	
	@Select("SELECT count(*) FROM member")
	int selectMemberCount();
	
	@Select("SELECT memberid, email, membername, address, birth, phone, active, joindate, admin FROM member ORDER BY joindate DESC LIMIT ${from}, ${count}")
	List<MemberDto> selectMemberByPage(@Param("from") int from, @Param("count") int count);
	
	// 아이디 중복확인
	@Select("SELECT memberId " +
			"FROM member " +
			"WHERE memberid = #{ memberId } ")
	MemberDto memberByIdOverlap(String memberId);

	// 회원정보수정
	
	  @Select("SELECT memberid, passwd, email, membername, address, birth, phone, active, joindate, admin "
	  + "FROM member " + "WHERE memberid = #{ memberId } AND active = TRUE " )
	  MemberDto selectMemberById(String memberId);
	
	  @Update("UPDATE member SET email = #{ email }, membername = #{ memberName }, address = #{address}, birth = #{birth}, phone = #{ phone } WHERE memberid = #{ memberId } ")
	  void updateMember(MemberDto member);
	 
	//비밀번호 수정
	  @Select("SELECT passwd FROM member WHERE memberid = #{ memberId } AND active = TRUE ")
	  MemberDto selectMemberPasswd(String memberId);
	  
	  @Update("UPDATE member SET passwd = #{ passwd } WHERE memberid = #{ memberId } ")
	  void updatePasswd(MemberDto member);
	
	// 회원탈퇴
	@Update("UPDATE member SET active = FALSE WHERE memberid = #{ memberId } " )
	void memberDelete(MemberDto member);
	/*@Delete("DELETE FROM member WHERE memberid = #{ memberId } AND passwd = #{ passwd } AND email = #{ email } AND membername = #{ memberName } AND address = #{address} AND birth = #{birth} AND phone = #{ phone } " )
	void memberDelete(MemberDto member);*/

	@Select("SELECT * FROM board WHERE active = TRUE AND memberId = #{memberId} ")
	List<BoardDto> selectAllBoardByMemberId(String memberId);

	// 회원 상세 정보 조회
	@Select("SELECT * FROM member WHERE memberId = #{memberId} ")
	MemberDto selectMemberByMemberId(String memberId);

	// 관리자 권한 부여
	@Update("UPDATE member SET admin = 'Admin' WHERE memberid = #{memberId} ")
	void updateAdmin(String memberId);
	
	@Update("UPDATE member SET admin = 'Member' WHERE memberid = #{memberId} ")
	void updateMember2(String memberId);

	@Update("UPDATE board SET active = FALSE WHERE boardNo =#{boardNo} ")
	void boardDeleted(int boardNo);

	@Select("SELECT orderNo, orderDate, to_char(returnDate,'yyyy-mm-dd') returnDate, to_char(rentDate,'yyyy-mm-dd') rentDate, pay, memberId FROM orderList WHERE memberId =#{memberId} Order By orderNo DESC")
	List<OrderListDto> selectOrderListByMemeber(String memberId);
	
}
