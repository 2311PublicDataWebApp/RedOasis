package com.oasis.red.board.store.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.oasis.red.board.domain.CommentVO;
import com.oasis.red.board.store.CommentStore;



@Repository
public class CommentStoreImpl implements CommentStore{

	@Override
	public int insertComment(SqlSession session, CommentVO replyVO) {
		int result = session.insert("ReplyMapper.insertComment", replyVO);
		return result;
	}

	@Override
	public List<CommentVO> selectCommentList(SqlSession session, Integer boardNo) {
		List<CommentVO> rList = session.selectList("CommentMapper.selectCommentList", boardNo);
		return rList;
	}

}
