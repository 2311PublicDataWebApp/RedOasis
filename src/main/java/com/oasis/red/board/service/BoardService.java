package com.oasis.red.board.service;

import java.util.List;

import com.oasis.red.admin.domain.PageInfo;
import com.oasis.red.board.domain.BoardImgVO;
import com.oasis.red.board.domain.BoardVO;

public interface BoardService {

	/**
	 * 게시물 등록 Service
	 * @param board
	 * @return int
	 */
	int insertBoard(BoardVO board);

	/**
	 * 게시물 목록 조회 Service
	 * @param pInfo 
	 * @return List
	 */
	List<BoardVO> selectNoticeList(PageInfo pInfo);

	/**
	 * 게시물 상세 조회 Service
	 * @param boardNo
	 * @return BoardVO
	 */
	BoardVO selectOneByNo(Integer boardNo);

	/**
	 * 게시물 이미지 조회 Service
	 * @param boardNo
	 * @return
	 */
	List<BoardImgVO> selectImgList(Integer boardNo);

}
