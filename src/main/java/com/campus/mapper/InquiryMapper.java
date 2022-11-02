package com.campus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.campus.dto.BoardDto;

@Mapper
public interface InquiryMapper {
	
	@Insert("INSERT INTO board (title, memberId, content, category) " +
			"VALUES (#{ title }, #{ memberId }, #{ content }, #{ category })")
	void insertBoard(BoardDto board);
	
	@Select("SELECT * FROM board WHERE category = 'inquiry' ORDER BY boardNo DESC")
	List<BoardDto> selectAllInquiry();

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

	
	

}
