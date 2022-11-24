package com.campus.service;

import java.util.List;

import com.campus.dto.BoardCommentDto;
import com.campus.dto.BoardDto;
import com.campus.dto.CommunityDto;
import com.campus.mapper.CommunityMapper;

import lombok.Setter;

public class CommunityServiceImpl implements CommunityService {
	
	@Setter
	private CommunityMapper communityMapper;


	@Override
	public void writeFreeboard(BoardDto board) {
		communityMapper.insertBoard(board); 
		
		if(board.getTags()!=null) {
			for(CommunityDto tag: board.getTags()) {
				tag.setBoardNo(board.getBoardNo());
				communityMapper.insertBoardTag(tag);
			}
		}
	}

	@Override
	public List<BoardDto> findBoardByPage(int pageNo, int pageSize) {
		
		int from = (pageNo-1)*pageSize;
		int count = pageSize;
		List<BoardDto> boards = communityMapper.selectBoardByPage(from, count);
		return boards;
	}

	@Override
	public int findBoardCount() {

		int boardCount = communityMapper.selectBoardCount();
		
		return boardCount;
	}

	@Override
	public void increaseBoardReadCount(int boardNo) {
		communityMapper.updateBoardReadCount(boardNo);
	}

	@Override
	public BoardDto findBoardByBoardNo(int boardNo) {

		BoardDto board = communityMapper.selectBoardByBoardNo(boardNo);
		
		return board;
	}

	@Override
	public void updateFreeboard(BoardDto board) {

		communityMapper.updateFreeboard(board);
		
	}

	@Override
	public void deleteFreeboard(int boardNo) {
		
		communityMapper.deleteFreeboard(boardNo);
		
	}

	@Override
	public CommunityDto findTagByBoardNo(int boardNo) {
		

		CommunityDto community = communityMapper.selectTagByBoardNo(boardNo);
		
		return community;
	}

	@Override
	public List<BoardDto> findBoardByTag(String tag,int pageNo,int PAGE_SIZE) {
		int from = (pageNo-1)*PAGE_SIZE;
		int count = PAGE_SIZE;
		List<BoardDto> boards = communityMapper.selectFreeboardByTag(tag, from, count);
		return boards;
	}

	@Override
	public List<BoardDto> searchFreeboard(String searchOption, String search, int pageNo, int pageSize) {
		int from = (pageNo-1)*pageSize;
		int count = pageSize;
		List<BoardDto> boards = communityMapper.selectFreeboardBySearch(searchOption, search, from, count);
		
		return boards;
	}

	@Override
	public void InsertFreeboardTags(int boardNo, String tag) {

		communityMapper.insertTagByBoardNo(boardNo, tag);
	}

	@Override
	public int findSearchBoardCount(String searchOption, String search) {

		int boardCount = communityMapper.selectSerchBoardCount(searchOption,search);
		
		return boardCount;
	}

	@Override
	public int findTagBoardCount(String tag) {
		int boardCount = communityMapper.selectTagCount(tag);
		return boardCount;
	}

	
	@Override
	public void deleteUpdateBoardTag(int boardNo) {
		
		communityMapper.deleteUpdateBoardTag(boardNo);
		
	}

	@Override
	public List<BoardDto> findTipByPage(int pageNo, int PAGE_SIZE) {
		int from = 0;
		int count = PAGE_SIZE*pageNo;
		List<BoardDto> boards = communityMapper.selectTipByPage(from, count);
		return boards;
	}

	@Override
	public int findTipCount() {
		int boardCount = communityMapper.selectTipCount();
		return boardCount;
	}

		
	@Override
	public void writeTip(BoardDto board) {
		communityMapper.insertTip(board);
	}

	@Override
	public List<BoardDto> searchTip(String searchOption, String search, int PAGE_SIZE, int pageNo) {
		int from = 0;
		int count = PAGE_SIZE*pageNo;
		List<BoardDto> boards = communityMapper.selectTipBySearch(searchOption, search, from, count);
		return boards;
	}

	@Override
	public int findSearchTipCount(String searchOption, String search) {
		int boardCount = communityMapper.selectTipBoardCount(searchOption,search);
		
		return boardCount;
	}

	@Override
	public List<BoardCommentDto> findBoardCommentByBoardNo(int boardNo) {
		List<BoardCommentDto> comments = communityMapper.selectCommentByBoardNo(boardNo);
		
		return comments;
	}

	@Override
	public void writeComment(BoardCommentDto commentDto) {
		communityMapper.insertComment(commentDto);
		
	}

	@Override
	public void updateGroupNo(int commentNo, int commentGroup) {
		communityMapper.updateGroupNo(commentNo, commentGroup);
		
	}

	@Override
	public void deleteComment(int commentNo) {
		
		communityMapper.deleteComment(commentNo);
	}

	@Override
	public void updateComment(BoardCommentDto comment) {
		communityMapper.updateComment(comment);
	}

	@Override
	public void writeReComment(BoardCommentDto comment) {
		
				// 1. 부모댓글 조회
				BoardCommentDto reCommentInfo = communityMapper.selectReCommentInfo(comment.getCommentNo());
				// 2. 부모댓글 정보를 바탕으로 comment의 commentGroup, depth+1 덮어씀
				comment.setCommentGroup(reCommentInfo.getCommentGroup());
				comment.setDepth(reCommentInfo.getDepth()+1);
				// 3. 해당 commentGroup에서 depth는 부모댓글보다 작거나같고 step은 부모댓글보다 큰 댓글중 가장 작은 step 가져와서 덮어쓰기
				int newStep = communityMapper.selectRecommentStepNo(comment.getCommentNo(), comment.getCommentGroup(),reCommentInfo.getStep());
				if(newStep==reCommentInfo.getStep()||newStep==0) {
					newStep = (communityMapper.selectMaxStep(comment.getCommentGroup())+1);
				}
				
				comment.setStep(newStep);
				//4. 가져와서 덮어 쓴 step과 같거나 큰 댓글들 step+1씩 해주기
				int recommentGroup = comment.getCommentGroup();
				communityMapper.updateStepNo(recommentGroup, newStep);
				// 3. 대댓글 저장
		communityMapper.insertReComment(comment);
	}

	@Override
	public List<BoardDto> findBestBoard() {
		List<BoardDto> board = communityMapper.selectBestBoard();
		return board;
	}



	
	
	

}
