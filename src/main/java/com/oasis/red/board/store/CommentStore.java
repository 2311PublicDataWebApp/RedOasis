package com.oasis.red.board.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.oasis.red.board.domain.CommentVO;


public interface CommentStore {

	/**
	 * 댓글 등록 Store
	 * @param replyVO
	 * @return int
	 */
	int insertComment(SqlSession session, CommentVO commentVO);

	/**
	 * 댓글 목록 조회 Store
	 * @param session
	 * @return List
	 */
	List<CommentVO> selectCommentList(SqlSession session, Integer boardNo);

}
