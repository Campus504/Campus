package com.campus.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;

import com.campus.dto.BoardDto;

@Mapper
public interface CommunityMapper {
	
	@Insert("INSERT INTO board (title, memberId, content, category) VALUES (#{title},#{memberId}, #{content}, #{category})")
	//@Options(useGeneratedKeys = true, keyColumn = "boardno", keyProperty = "boardNo")
	void insertBoard(BoardDto board);

}
