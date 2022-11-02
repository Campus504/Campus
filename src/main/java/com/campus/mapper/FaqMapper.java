package com.campus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.campus.dto.BoardDto;

@Mapper 
public interface FaqMapper {

	@Insert("INSERT INTO board (title, memberId, content, category) VALUES (#{title},#{memberId}, #{content}, #{category}) ")
	void insertAdminBoard(BoardDto board);

	@Select("SELECT boardno, title, memberId, writeDate, readcount, category FROM board WHERE category = 'notice' ORDER BY boardno DESC LIMIT #{from}, #{count}")
	List<BoardDto> selectNoticeByPage(@Param("from") int from, @Param("count") int count);

	@Select("SELECT COUNT(*) FROM board WHERE category='notice' ")
	int selectNoticeCount();

	@Select("SELECT * FROM board WHERE boardno= #{boardNo}")
	BoardDto selectBoardByBoardNo(int boardNo);

}
