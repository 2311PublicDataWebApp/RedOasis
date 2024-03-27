package com.oasis.red.board.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.oasis.red.admin.domain.PageInfo;
import com.oasis.red.board.domain.BoardImgVO;
import com.oasis.red.board.domain.BoardVO;

public interface BoardStore {

	/**
	 * 게시물 등록 Store
	 * @param session
	 * @param board
	 * @return int
	 */
	int insertBoard(SqlSession session, BoardVO board);

	/**
	 * 게시물 목록 조회 Store
	 * @param session
	 * @param pInfo 
	 * @return List
	 */
	List<BoardVO> selectNoticeList(SqlSession session, PageInfo pInfo);

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

}
