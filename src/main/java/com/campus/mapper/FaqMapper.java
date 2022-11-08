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
public interface FaqMapper {

	@Insert("INSERT INTO board (title, memberId, content, category) VALUES (#{title},#{memberId}, #{content}, #{category}) ")
	void insertAdminBoard(BoardDto board);

	@Select("SELECT boardno, title, memberId, writeDate, readcount, category FROM board WHERE category = 'notice' ORDER BY boardno DESC LIMIT #{from}, #{count}")
	List<BoardDto> selectNoticeByPage(@Param("from") int from, @Param("count") int count);

	@Select("SELECT COUNT(*) FROM board WHERE category='notice' ")
	int selectNoticeCount();

	@Select("SELECT * FROM board WHERE boardno= #{boardNo}")
	BoardDto selectBoardByBoardNo(int boardNo);

	@Delete("DELETE FROM board WHERE boardno= #{boardNo}")
	void deleteNoticeBoard(int boardNo);

	@Update("UPDATE board SET readCount = readCount +1 WHERE boardNo= ${boardNo}")
	void updateNoticeReadCount(int boardNo);

	@Select("SELECT * FROM board WHERE boardNo=${boardNo}")
	BoardDto selectNoticeByBoardNo(int boardNo);

	@Update("UPDATE board SET title = #{title}, content=#{content} WHERE boardno = #{boardNo} ")
	void updateNoticeBaord(BoardDto board);

	@Select("select * from board where category = 'notice' and ${searchOption} like '%${search}%' order By boardNo DESC LIMIT #{from}, #{count}")
	List<BoardDto> selectSearchNoticeByPage(@Param("searchOption") String searchOption, @Param("search") String search,@Param("from") int from, @Param("count") int count);

	@Select("SELECT COUNT(*) FROM board WHERE category = 'notice' and ${searchOption} like '%${search}%'")
	int selectSearchNoticeCount(@Param("searchOption") String searchOption, @Param("search") String search);

	@Select("SELECT * FROM board WHERE category = 'faq'")
	List<BoardDto> selectAllFaq();

	@Delete("DELETE FROM board WHERE boardNo = ${boardNo}")
	void deleteFaq(int boardNo);

	@Select("SELECT * FROM board WHERE boardNo = ${boardNo} ")
	BoardDto selectFaqByBoardNo(int boardNo);

	@Update("UPDATE board SET title =#{title} , content = #{content} WHERE  boardno = #{boardNo} ")
	void updateFaq(BoardDto board);
	


}
