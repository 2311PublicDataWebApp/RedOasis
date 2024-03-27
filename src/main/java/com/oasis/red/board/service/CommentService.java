package com.oasis.red.board.service;

import java.util.List;

import com.oasis.red.board.domain.CommentVO;

public interface CommentService {


	/**
	 * 댓글 등록 Service
	 * @param commentVO
	 * @return int
	 */
	int insertComment(CommentVO commentVO);

	/**
	 * 댓글 목록 조회 Service
	 * @return List
	 */
	List<CommentVO> selectCommentList(Integer boardNo);

	
	
	/**
	 * 댓글 삭제 Service
	 * @param commentNo
	 * @return
	 */
	int deleteComment(Integer commentNo);

}
