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
public interface CommunityMapper {
	
	@Insert("INSERT INTO board (title, memberId, content, category) VALUES (#{title},#{memberId}, #{content}, #{category})")
	@Options(useGeneratedKeys = true, keyColumn = "boardNo", keyProperty = "boardNo")
	void insertBoard(BoardDto board);

	@Select("SELECT count(*) FROM board WHERE active = TRUE AND category = 'freeboard'")
	int selectBoardCount();

	@Select("SELECT boardno, title, memberId, writeDate, readcount, category FROM board WHERE active = TRUE AND category = 'freeboard' ORDER BY boardno DESC LIMIT #{from}, #{count}")
	List<BoardDto> selectBoardByPage(@Param("from") int from, @Param("count") int count);

	@Update("UPDATE board SET readcount = readcount+1 WHERE boardno=#{boardNo}")
	void updateBoardReadCount(int boardNo);

	@Select("SELECT * FROM board WHERE boardno=#{boardNo}")
	BoardDto selectBoardByBoardNo(int boardNo);

	@Update("UPDATE board set title = #{title}, content=#{content} WHERE boardno = #{boardNo} ")
	void updateFreeboard(BoardDto board);

	@Update("UPDATE board set active = false WHERE boardno = #{boardNo}")
	void deleteFreeboard(int boardNo);

	@Select("SELECT tag FROM community WHERE boardNo = #{boardNo}")
	CommunityDto selectTagByBoardNo(int boardNo);

	// 에러 수정 : 쿼리 수정
	@Select("SELECT * FROM board WHERE active = TRUE AND category = 'freeboard' AND boardNo IN ( SELECT boardNo From community WHERE tag like '%${tag}%' ) ORDER BY boardNo DESC LIMIT #{from}, #{count} ")
	List<BoardDto> selectFreeboardByTag(@Param("tag") String tag, @Param("from") int from, @Param("count") int count);

	@Select("select * from board where active = TRUE AND category = 'freeboard' and ${searchOption} like '%${search}%' order By boardNo DESC LIMIT #{from}, #{count}")
	List<BoardDto> selectFreeboardBySearch(@Param("searchOption") String searchOption, @Param("search") String search,@Param("from") int from, @Param("count") int count);

	@Select("SELECT COUNT(*) FROM board WHERE active = TRUE AND category = 'freeboard' and ${searchOption} like '%${search}%'")
	int selectSerchBoardCount(@Param("searchOption") String searchOption, @Param("search") String search);

	// 에러 수정 : 쿼리 수정 //20221127다시수정(페이징오류)
	@Select("select count(*) from community where boardNo in (select boardNo from board where active = true ) and  tag like '%${tag}%'")
	int selectTagCount(@Param("tag") String tag);

	@Delete("DELETE FROM community WHERE boardNo = ${boardNo}")
	void deleteUpdateBoardTag(int boardNo);
	
	@Insert("INSERT INTO community ( boardNo, tag ) VALUES ( #{boardNo}, #{tag} )")
	void insertTagByBoardNo(@Param("boardNo") int boardNo,@Param("tag") String tag);

	@Select("SELECT * FROM board WHERE active = TRUE AND category = 'tip' ORDER BY boardno DESC LIMIT #{from}, #{count}")
	List<BoardDto> selectTipByPage(@Param("from") int from, @Param("count") int count);

	@Select("SELECT count(*) FROM board WHERE active = TRUE AND category = 'tip'")
	int selectTipCount();

	@Insert("INSERT INTO board (title, memberId, content, category) VALUES (#{title},#{memberId}, #{content}, #{category})")
	void insertTip(BoardDto board);

	@Select("select * from board where active = TRUE AND category = 'tip' and ${searchOption} like '%${search}%' order By boardNo DESC LIMIT ${from}, ${count}")
	List<BoardDto> selectTipBySearch(@Param("searchOption") String searchOption, @Param("search") String search, @Param("from") int from, @Param("count") int count);

	@Select("SELECT COUNT(*) FROM board WHERE active = TRUE AND category = 'tip' and ${searchOption} like '%${search}%'")
	int selectTipBoardCount(@Param("searchOption") String searchOption, @Param("search") String search);

	/////////////////////////댓글//////////////////////////////////////
	
	@Select("SELECT * FROM boardComment where boardNo = ${boardNo} ORDER bY commentGroup, step  ")
	List<BoardCommentDto> selectCommentByBoardNo(int boardNo);

	@Insert("INSERT INTO boardComment (content, commentGroup, depth, step, boardNo, memberId) VALUES (#{content},#{commentGroup},#{depth},#{step},#{boardNo},#{memberId} ) ")
	@Options(useGeneratedKeys = true, keyColumn = "commentno", keyProperty = "commentNo")
	void insertComment(BoardCommentDto commentDto);

	@Update("UPDATE boardComment SET commentGroup = #{commentGroup} WHERE commentNo = #{commentNo}")
	void updateGroupNo(@Param("commentNo") int commentNo,@Param("commentGroup") int commentGroup);

	@Delete("DELETE FROM boardComment WHERE commentNo = ${commentNo} OR commentGroup = ${commentNo}")
	void deleteComment(int commentNo);

	@Update("UPDATE boardComment SET content = #{content} WHERE commentNo = #{commentNo}")
	void updateComment(BoardCommentDto comment);

	@Select("SELECT * FROM boardComment WHERE commentNo=${commentNo} ")
	BoardCommentDto selectReCommentInfo(@Param("commentNo") int commentNo);
	
	@Select("SELECT nvl(min(step),0) from boardComment where commentGroup = ${commentGroup} and depth <= (select depth from boardComment where commentNo = ${commentNo} ) AND step > ${step}")
	int selectRecommentStepNo(@Param("commentNo") int commentNo, @Param("commentGroup") int commentGroup,@Param("step") int step);
	
	@Select("SELECT MAX(step) from boardComment WHERE commentGroup = ${commentGroup} ")
	int selectMaxStep(@Param("commentGroup")  int commentGroup);
	
	@Update("UPDATE boardComment SET step = step + 1 WHERE commentGroup = ${commentGroup} and step >= ${step}")
	void updateStepNo(@Param("commentGroup") int recommentGroup, @Param("step") int newStep);
	
	@Insert("INSERT INTO boardComment (boardno, memberId, content, commentGroup, step, depth) VALUES (#{boardNo}, #{memberId}, #{content}, #{commentGroup}, #{step}, #{depth}) ")
	void insertReComment(BoardCommentDto comment);

	//////////////////////////댓글끝////////////////////////////////////////////////////////////
	
	
	@Insert("INSERT INTO community (boardNo, tag) VALUES (#{boardNo}, #{tag})")
	void insertBoardTag(CommunityDto tag);

	@Select("select * from board WHERE active = TRUE AND boardNo in (select boardNo from board WHERE category = 'freeboard'  ) order By readCount desc limit 6 ")
	List<BoardDto> selectBestBoard();



}
