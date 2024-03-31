package com.oasis.red.board.store;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;


import com.oasis.red.board.domain.BoardImgVO;
import com.oasis.red.board.domain.BoardVO;
import com.oasis.red.board.domain.PageInfo;

public interface BoardStore {


	/**
	 * 게시물 목록 조회 Store
	 * @param session
	 * @param pInfo 
	 * @return List
	 */
	List<BoardVO> selectBoardList(SqlSession session, PageInfo pInfo);

	/**
	 * 게시물 상세 조회 Store
	 * @param boardNo
	 * @return BoardVO
	 */
	BoardVO selectOneByNo(SqlSession session, Integer boardNo);

	/**
	 *첨부파일 store
	 * @param session
	 * @param boardNo
	 * @return iList
	 */
	List<BoardImgVO> selectImgList(SqlSession session, Integer boardNo);


	
	/**
	 * 검색 갯수 Store
	 * @param session
	 * @param paramMap
	 * @return
	 */
	int selectTotalCount(SqlSession session, Map<String, String> paramMap);

	
	/**
	 * 자유 게시판 검색 Store
	 * @param session
	 * @param pInfo
	 * @param paramMap
	 * @return List
	 */
	List<BoardVO> selectBoardByKeword(SqlSession session, PageInfo pInfo, Map<String, String> paramMap);

	
	/**
	 * 자유게시판 상세
	 * @param session
	 * @param boardNo
	 * @return board
	 */
	BoardVO selectBoardByNo(SqlSession session, Integer boardNo);

	/**
	 * 자유게시판 수정
	 * @param session
	 * @param board
	 * @return
	 */
	int upadateBoard(SqlSession session, BoardVO board, BoardImgVO boardImg);


	/**
	 * 게시물 등록 Store
	 * @param session
	 * @param board
	 * @return int
	 */
	int insertBoard(SqlSession session, BoardVO board, BoardImgVO boardImg);

	
	/**
	 * 게시판 삭제 Store
	 * @param session
	 * @param boardNo
	 * @return
	 */
	int deleteBoard(SqlSession session, Integer boardNo);

	


}
