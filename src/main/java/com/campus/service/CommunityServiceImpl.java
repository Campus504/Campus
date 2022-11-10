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
		
	}
	
	@Override
	public int findLastBoardNo() {
		int tagNo = communityMapper.selectLastBoardNo();
		return tagNo;
	}
	
	@Override
	public void writeFreeboardTags(int boardTagNo, String tag) {
		communityMapper.insertFreeboardTags(boardTagNo, tag);
		
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
	public List<BoardDto> searchTip(String searchOption, String search, int PAGE_SIZE) {
		int from = 0;
		int count = PAGE_SIZE;
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

//	@Override
//	public void writeReComment(BoardCommentDto comment) {
//		
//		// 1. 부모글 조회 -> 그룹번호(groupno), 그룹내 순서 번호(step), 들여쓰기(depth) 적용
//				BoardCommentDto parent = communityMapper.selectCommentByCommentNo(comment.getCommentNo());
//				comment.setBoardNo(parent.getBoardNo());
//				comment.setCommentGroup(parent.getCommentGroup());
//				comment.setStep(parent.getStep()+1);
//				comment.setDepth(parent.getDepth()+1);
//				// 2. 이미 있던 글 중에서 삽입될 댓글 뒤에 있는 step 1씩 증가
//				communityMapper.updateStepNo(parent.getCommentGroup(), parent.getStep());
//				
//				// 3. 대댓글 저장
//		communityMapper.insertReComment(comment);
//	

	@Override
	public void writeReComment(BoardCommentDto comment) {
		
		// 1. 부모글 조회 -> 그룹번호(groupno), 그룹내 순서 번호(step), 들여쓰기(depth) 적용
				BoardCommentDto reCommentStep = communityMapper.selectReCommentInfo(comment.getCommentNo());
				if(reCommentStep==null) { //그냥 대댓글 달때
					
					int maxDepth = communityMapper.selectMaxDepthBycommentGroup(comment.getCommentNo());
					if(maxDepth==1) {
						BoardCommentDto reCommentWithMaxDepth = communityMapper.selectRecommentWithMaxDepth(comment.getCommentNo());
						comment.setBoardNo(reCommentWithMaxDepth.getBoardNo());
						comment.setCommentGroup(reCommentWithMaxDepth.getCommentGroup());
						comment.setStep(reCommentWithMaxDepth.getStep());
						comment.setDepth(reCommentWithMaxDepth.getDepth());
						communityMapper.updateStepNo(reCommentWithMaxDepth.getCommentGroup(), reCommentWithMaxDepth.getStep());
					}else {
						BoardCommentDto reCommentStep2 = communityMapper.selectReCommentInfo2(comment.getCommentNo());
						comment.setBoardNo(reCommentStep2.getBoardNo());
						comment.setCommentGroup(reCommentStep2.getCommentGroup());
						comment.setStep(reCommentStep2.getStep());
						comment.setDepth(reCommentStep2.getDepth());
					}
					
				}else { // 대대대ㅐ댓글 달때
					comment.setBoardNo(reCommentStep.getBoardNo());
					comment.setCommentGroup(reCommentStep.getCommentGroup());
					comment.setStep(reCommentStep.getStep());
					comment.setDepth(reCommentStep.getDepth());
					// 2. 이미 있던 글 중에서 삽입될 댓글 뒤에 있는 step 1씩 증가
					communityMapper.updateStepNo(reCommentStep.getCommentGroup(), reCommentStep.getStep());
					
				}
				
				// 3. 대댓글 저장
		communityMapper.insertReComment(comment);
	}


	
	
	

}
