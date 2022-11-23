package com.campus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Many;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.campus.dto.AttachDto;
import com.campus.dto.BoardDto;

@Mapper 
public interface FaqMapper {

	@Insert("INSERT INTO board (title, memberId, content, category) VALUES (#{title},#{memberId}, #{content}, #{category}) ")
	@Options(useGeneratedKeys = true, keyColumn = "boardNo", keyProperty = "boardNo")
	void insertAdminBoard(BoardDto board);

	@Select("SELECT boardno, title, memberId, writeDate, readcount, category FROM board WHERE category = 'notice' AND active = TRUE  ORDER BY boardno DESC LIMIT #{from}, #{count}")
	List<BoardDto> selectNoticeByPage(@Param("from") int from, @Param("count") int count);

	@Select("SELECT COUNT(*) FROM board WHERE category='notice' AND active= TRUE ")
	int selectNoticeCount();

	@Select("SELECT * FROM board WHERE boardno= #{boardNo}")
	@Results(id = "boardResultMap", value = {
			@Result(column = "boardNo", property = "boardNo", id = true),
			@Result(column = "title", property = "title"),
			@Result(column = "memberId", property = "memberId"),
			@Result(column = "content", property = "content"),
			@Result(column = "readcount", property = "readCount"),
			@Result(column = "writeDate", property = "writeDate"),
			@Result(column = "boardNo", property = "attachments", 
					many = @Many(select="selectBoardAttachByBoardNo")),
			})
	BoardDto selectBoardByBoardNo(int boardNo);

	@Update("UPDATE board SET active = FALSE WHERE boardno= #{boardNo}")
	void deleteNoticeBoard(int boardNo);

	@Update("UPDATE board SET readCount = readCount +1 WHERE boardNo= ${boardNo}")
	void updateNoticeReadCount(int boardNo);

	@Select("SELECT * FROM board WHERE boardNo=${boardNo}")
	BoardDto selectNoticeByBoardNo(int boardNo);

	@Update("UPDATE board SET title = #{title}, content=#{content} WHERE boardno = #{boardNo} ")
	void updateNoticeBaord(BoardDto board);

	@Select("select * from board where active = TRUE AND category = 'notice' AND ${searchOption} like '%${search}%' order By boardNo DESC LIMIT #{from}, #{count}")
	List<BoardDto> selectSearchNoticeByPage(@Param("searchOption") String searchOption, @Param("search") String search,@Param("from") int from, @Param("count") int count);

	@Select("SELECT COUNT(*) FROM board WHERE active = TRUE AND category = 'notice' and ${searchOption} like '%${search}%'")
	int selectSearchNoticeCount(@Param("searchOption") String searchOption, @Param("search") String search);

	@Select("SELECT * FROM board WHERE active = TRUE AND category = 'faq' ")
	List<BoardDto> selectAllFaq();

	@Update("UPDATE board SET active = FALSE WHERE boardno= #{boardNo}")
	void deleteFaq(int boardNo);

	@Select("SELECT * FROM board WHERE boardNo = ${boardNo} ")
	BoardDto selectFaqByBoardNo(int boardNo);

	@Update("UPDATE board SET title =#{title} , content = #{content} WHERE  boardno = #{boardNo} ")
	void updateFaq(BoardDto board);

	@Select("SELECT * FROM attach WHERE attachno = ${attachNo} ")
	AttachDto selectAttachByAttachNo(int attachNo);

	@Insert("INSERT INTO attach ( boardNo, fileName, savedName ) VALUES ( #{boardNo}, #{fileName}, #{savedName} )")
	void insertBoardAttach(AttachDto attachment);
	
	@Select("SELECT * FROM attach WHERE boardno = #{boardNo}")
	List<AttachDto> selectBoardAttachByBoardNo(int boardNo);

}
