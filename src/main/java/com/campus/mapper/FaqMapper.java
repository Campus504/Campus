package com.campus.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import com.campus.dto.BoardDto;

@Mapper 
public interface FaqMapper {

	@Insert("INSERT INTO board (title, memberId, content, category) VALUES (#{title},#{memberId}, #{content}, #{category}) ")
	void insertAdminBoard(BoardDto board);

}
