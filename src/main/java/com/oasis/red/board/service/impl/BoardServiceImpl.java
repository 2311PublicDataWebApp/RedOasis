package com.oasis.red.board.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oasis.red.board.domain.BoardImgVO;
import com.oasis.red.board.domain.BoardVO;
import com.oasis.red.board.domain.PageInfo;
import com.oasis.red.board.service.BoardService;
import com.oasis.red.board.store.BoardStore;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardStore bStore;
	@Autowired
	private SqlSession session;
	

	@Override
	public List<BoardVO> selectBoardList(PageInfo pInfo) {
		List<BoardVO> bList = bStore.selectBoardList(session, pInfo);
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

	@Override
	public int getTotalCount(Map<String, String> paramMap) {
		int totalCount = bStore.selectTotalCount(session, paramMap);
		return totalCount;
	}

	@Override
	public List<BoardVO> searchBoardByKeword(PageInfo pInfo, Map<String, String> paramMap) {
		List<BoardVO> searchList = bStore.selectBoardByKeword(session, pInfo, paramMap);
		return searchList;
	}

	@Override
	public BoardVO selectBoardByNo(int boardNo) {
		BoardVO board = bStore.selectBoardByNo(session, boardNo);
		return board;
	}

	@Override
	public int updateBoard(BoardVO board) {
		int result = bStore.upadateBoard(session, board);
		return result;
	}

	@Override
	public int insertBoard(BoardVO board, BoardImgVO boardImg) {
		int result = bStore.insertBoard(session, board, boardImg);
		return result;
	}
	

}
