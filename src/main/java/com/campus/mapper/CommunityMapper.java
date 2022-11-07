package com.campus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
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
	
	@Select("SELECT MAX(boardNo) FROM board")
	int selectLastBoardNo();

	@Insert("INSERT INTO community (boardNo, tag ) VALUES (#{boardNo}, #{tag}) ")
	void insertFreeboardTags(@Param("boardNo") int boardTagNo, @Param("tag") String tag);

	@Select("SELECT count(*) FROM board WHERE category = 'freeboard'")
	int selectBoardCount();

	@Select("SELECT boardno, title, memberId, writeDate, readcount, category FROM board WHERE category = 'freeboard' ORDER BY boardno DESC LIMIT #{from}, #{count}")
	List<BoardDto> selectBoardByPage(@Param("from") int from, @Param("count") int count);

	@Update("UPDATE board SET readcount = readcount+1 WHERE boardno=#{boardNo}")
	void updateBoardReadCount(int boardNo);

	@Select("SELECT * FROM board WHERE boardno=#{boardNo}")
	BoardDto selectBoardByBoardNo(int boardNo);

	@Update("UPDATE board set title = #{title}, content=#{content} WHERE boardno = #{boardNo} ")
	void updateFreeboard(BoardDto board);

	@Delete("DELETE FROM board WHERE boardno = #{boardNo}")
	void deleteFreeboard(int boardNo);

	@Select("SELECT tag FROM community WHERE boardNo = #{boardNo}")
	CommunityDto selectTagByBoardNo(int boardNo);

	@Select("SELECT * FROM board WHERE category = 'freeboard' AND boardNo IN ( SELECT boardNo From community WHERE tag like '%${tag}%' )  ORDER BY boardNo DESC  LIMIT #{from}, #{count} ")
	List<BoardDto> selectFreeboardByTag(@Param("tag") String tag, @Param("from") int from, @Param("count") int count);

	@Select("select * from board where category = 'freeboard' and ${searchOption} like '%${search}%' order By boardNo DESC LIMIT #{from}, #{count}")
	List<BoardDto> selectFreeboardBySearch(@Param("searchOption") String searchOption, @Param("search") String search,@Param("from") int from, @Param("count") int count);

	@Select("SELECT COUNT(*) FROM board WHERE category = 'freeboard' and ${searchOption} like '%${search}%'")
	int selectSerchBoardCount(@Param("searchOption") String searchOption, @Param("search") String search);

	@Select("SELECT COUNT(*) FROM community WHERE tag LIKE '%${tag}%'")
	int selectTagCount(@Param("tag") String tag);

	@Delete("DELETE FROM community WHERE boardNo = ${boardNo}")
	void deleteUpdateBoardTag(int boardNo);
	
	@Insert("INSERT INTO community ( boardNo, tag ) VALUES ( #{boardNo}, #{tag} )")
	void insertTagByBoardNo(@Param("boardNo") int boardNo,@Param("tag") String tag);

	@Select("SELECT * FROM board WHERE category = 'tip' ORDER BY boardno DESC LIMIT #{from}, #{count}")
	List<BoardDto> selectTipByPage(@Param("from") int from, @Param("count") int count);

	@Select("SELECT count(*) FROM board WHERE category = 'tip'")
	int selectTipCount();

	@Insert("INSERT INTO board (title, memberId, content, category) VALUES (#{title},#{memberId}, #{content}, #{category})")
	void insertTip(BoardDto board);


}
