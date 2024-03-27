package com.oasis.red.board.store.impl;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.oasis.red.admin.domain.PageInfo;
import com.oasis.red.board.domain.BoardImgVO;
import com.oasis.red.board.domain.BoardVO;
import com.oasis.red.board.store.BoardStore;

@Repository
public class BoardStoreImpl implements BoardStore{

	@Override
	public int insertBoard(SqlSession session, BoardVO board) {
		int result = session.insert("BoardMapper.insertBoard", board);
		return result;
	}

	@Override
	public List<BoardVO> selectNoticeList(SqlSession session, PageInfo pInfo) {
		int limit = pInfo.getRecordCountPerPage();
		int offset = (pInfo.getCurrentPage()-1)*limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<BoardVO> bList = session.selectList("BoardMapper.selectNoticeList", null, rowBounds);
		return bList;
	}

	@Override
	public BoardVO selectOneByNo(SqlSession session, Integer boardNo) {
		BoardVO boardVO = session.selectOne("BoardMapper.selectOneByNo", boardNo);
		return boardVO;
	}

	@Override
	public List<BoardImgVO> selectImgList(SqlSession session, Integer boardNo) {
		List<BoardImgVO> iList= session.selectOne("BoardMapper.selectImgList", boardNo);
		return iList;
	}

}
