package com.oasis.red.board.store.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.oasis.red.board.domain.BoardImgVO;
import com.oasis.red.board.domain.BoardVO;
import com.oasis.red.board.domain.PageInfo;
import com.oasis.red.board.store.BoardStore;

@Repository
public class BoardStoreImpl implements BoardStore {

	@Override
	public List<BoardVO> selectBoardList(SqlSession session, PageInfo pInfo) {
		int limit = pInfo.getRecordCountPerPage();
		int offset = (pInfo.getCurrentPage() - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<BoardVO> bList = session.selectList("BoardMapper.selectBoardList", null, rowBounds);
		return bList;
	}

	@Override
	public BoardVO selectOneByNo(SqlSession session, Integer boardNo) {
		BoardVO boardVO = session.selectOne("BoardMapper.selectOneByNo", boardNo);
		return boardVO;
	}

	@Override
	public List<BoardImgVO> selectImgList(SqlSession session, Integer boardNo) {
		List<BoardImgVO> iList = session.selectList("BoardMapper.selectImgList", boardNo);
		return iList;
	}

	@Override
	public int selectTotalCount(SqlSession session, Map<String, String> paramMap) {
		int totalCount = session.selectOne("BoardMapper.searchTotalCount", paramMap);
		return totalCount;
	}

	@Override
	public List<BoardVO> selectBoardByKeword(SqlSession session, PageInfo pInfo, Map<String, String> paramMap) {
		int limit = pInfo.getRecordCountPerPage();
		int offset = (pInfo.getCurrentPage() - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<BoardVO> searchList = session.selectList("BoardMapper.searchBoardByKeword", paramMap, rowBounds);
		return searchList;
	}

	@Override
	public BoardVO selectBoardByNo(SqlSession session, int boardNo) {
		BoardVO board = session.selectOne("BoardMapper.selectBoardByNo", boardNo);
		return board;
	}

	@Override
	public int upadateBoard(SqlSession session, BoardVO board) {
		// TODO Auto-generated method stub
		int result = session.update("BoardMapper.updateBoard", board);
		result += session.update("BoardMapper.updateBoardImg", board);
		return result;
	}

	@Override
	public int insertBoard(SqlSession session, BoardVO board, BoardImgVO boardImg) {
		int result = session.insert("BoardMapper.insertBoard", board);
		result += session.insert("BoardMapper.insertBoardFiles", boardImg);
		return result;
	}

}
