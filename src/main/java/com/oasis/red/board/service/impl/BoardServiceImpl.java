package com.oasis.red.board.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oasis.red.admin.domain.PageInfo;
import com.oasis.red.board.domain.BoardImgVO;
import com.oasis.red.board.domain.BoardVO;
import com.oasis.red.board.service.BoardService;
import com.oasis.red.board.store.BoardStore;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardStore bStore;
	@Autowired
	private SqlSession session;
	
	@Override
	public int insertBoard(BoardVO board) {
		int result = bStore.insertBoard(session, board);
		return result;
	}

	@Override
	public List<BoardVO> selectNoticeList(PageInfo pInfo) {
		List<BoardVO> bList = bStore.selectNoticeList(session, pInfo);
		return bList;
	}

	@Override
	public BoardVO selectOneByNo(Integer boardNo) {
		BoardVO boardVO = bStore.selectOneByNo(session, boardNo);
		return boardVO;
	}

	@Override
	public List<BoardImgVO> selectImgList(Integer boardNo) {
		List<BoardImgVO> iList= bStore.selectImgList(session,boardNo );
		return iList;
	}

}
