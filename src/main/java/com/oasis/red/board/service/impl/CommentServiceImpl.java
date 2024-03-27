package com.oasis.red.board.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oasis.red.board.domain.CommentVO;
import com.oasis.red.board.service.CommentService;
import com.oasis.red.board.store.CommentStore;



@Service
public class CommentServiceImpl implements CommentService{

	@Autowired
	private CommentStore rStore;
	@Autowired
	private SqlSession session;
	
	@Override
	public int insertComment(CommentVO commentVO) {
		int result = rStore.insertComment(session, commentVO);
		return result;
	}

	@Override
	public List<CommentVO> selectCommentList(Integer boardNo) {
		List<CommentVO> rList = rStore.selectCommentList(session, boardNo);
		return rList;
	}

	@Override
	public int deleteComment(Integer commentNo) {
		// TODO Auto-generated method stub
		return 0;
	}

}