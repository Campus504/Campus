package com.campus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import com.campus.dto.BoardDto;
import com.campus.dto.CommunityDto;

@Mapper
public interface CommunityMapper {
	
	@Insert("INSERT INTO board (title, memberId, content, category) VALUES (#{title},#{memberId}, #{content}, #{category})")
	//@Options(useGeneratedKeys = true, keyColumn = "boardno", keyProperty = "boardNo")
	void insertBoard(BoardDto board);

	
	@Select("SELECT * FROM board WHERE category = 'freeboard' ORDER BY boardNo DESC")
	List<BoardDto> selectAllFreeboard();

	@Select("SELECT MAX(boardNo) FROM board")
	int selectLastBoardNo();

	@Insert("INSERT INTO community (boardNo, tag ) VALUES (#{boardNo},#{tags}) ")
	void insertFreeboardTags(int boardTagNo, List<CommunityDto> tags);// tag 넣을 수 있게 나중에 수정, boardTagNo 필요한가?

	@Select("SELECT count(*) FROM board")
	int selectBoardCount();

	@Select("SELECT boardno, title, memberId, writeDate, readcount, category FROM board WHERE category = 'freeboard' ORDER BY boardno DESC LIMIT #{from}, #{count}")
	List<BoardDto> selectBoardByPage(@Param("from") int from, @Param("count") int count);

	@Update("UPDATE board SET readcount = readcount+1 WHERE boardno=#{boardNo}")
	void updateBoardReadCount(int boardNo);

	@Select("SELECT * FROM board WHERE boardno=#{boardNo}")
	BoardDto selectBoardByBoardNo(int boardNo);

	
	

}
