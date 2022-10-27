package com.campus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;

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
	void insertFreeboardTags(int boardTagNo, List<CommunityDto> tags);// LIST말고 서비스에서 포문 돌려야??

	
	

}
