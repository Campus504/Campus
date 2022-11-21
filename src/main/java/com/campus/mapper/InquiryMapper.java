package com.campus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.campus.dto.BoardCommentDto;
import com.campus.dto.BoardDto;
import com.campus.dto.CommunityDto;

@Mapper
public interface InquiryMapper {
	
	@Insert("INSERT INTO board (title, memberId, content, category) " +
			"VALUES (#{ title }, #{ memberId }, #{ content }, #{ category })")
	void insertBoard(BoardDto board);
	
	@Select("SELECT * FROM board WHERE category = 'inquiry' ORDER BY boardNo DESC")
	List<BoardDto> selectAllInquiry();
	
	@Select("SELECT MAX(boardNo) FROM board")
	int selectLastBoardNo();
	
	@Insert("INSERT INTO community (boardNo, tag ) VALUES (#{boardNo}, #{tag}) ")
	void insertInquiryTags(@Param("boardNo") int boardTagNo, @Param("tag") String tag);

	@Select("SELECT count(*) FROM board")
	int selectBoardCount();

	@Select("SELECT boardno, title, memberId, writeDate, readcount, category FROM board WHERE category = 'inquiry' ORDER BY boardno DESC LIMIT #{from}, #{count}")
	List<BoardDto> selectBoardByPage(@Param("from") int from, @Param("count") int count);

	@Update("UPDATE board SET readcount = readcount+1 WHERE boardno=#{boardNo}")
	void updateBoardReadCount(int boardNo);

	@Select("SELECT * FROM board WHERE boardno=#{boardNo}")
	BoardDto selectBoardByBoardNo(int boardNo);

	@Update("UPDATE board set title = #{title}, content=#{content} WHERE boardno = #{boardNo} ")
	void updateInquiry(BoardDto board);

	@Delete("DELETE FROM board WHERE boardno = #{boardNo}")
	void deleteInquiry(int boardNo);
	
	@Select("SELECT tag FROM community WHERE boardNo = #{boardNo}")
	CommunityDto selectTagByBoardNo(int boardNo);

	@Select("SELECT * FROM board WHERE category = 'inquiry' AND boardNo IN ( SELECT boardNo From community WHERE tag like '%${tag}%' )  ORDER BY boardNo DESC ")
	List<BoardDto> selectInquiryByTag(String tag);

	@Select("select * from board WHERE category = 'inquiry' and title like '%${search}%' OR content like '%${search}%' order By boardNo DESC")
	List<BoardDto> selectInquiryBySearch(String search);	

}
