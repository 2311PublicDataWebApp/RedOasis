package com.oasis.red.board.service;

import java.util.List;
import java.util.Map;

import com.oasis.red.board.domain.BoardImgVO;
import com.oasis.red.board.domain.BoardVO;
import com.oasis.red.board.domain.PageInfo;

public interface BoardService {



	/**
	 * 게시물 목록 조회 Service
	 * @param pInfo 
	 * @return List
	 */
	List<BoardVO> selectBoardList(PageInfo pInfo);

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

	
	/**
	 * 검색 게시물 전체 갯수 Service
	 * @param paramMap
	 * @return int
	 */
	int getTotalCount(Map<String, String> paramMap);

	/**
	 * 자유게시판 검색 Service
	 * @param pInfo
	 * @param paramMap
	 * @return List
	 */
	List<BoardVO> searchBoardByKeword(PageInfo pInfo, Map<String, String> paramMap);

	
	/**
	 * 번호로 자유게시판 찾기
	 * @param noticeNo
	 * @return
	 */
	BoardVO selectBoardByNo(int boardNo);

	/**
	 * 공지사항 수정
	 * @param board
	 * @return int
	 */
	int updateBoard(BoardVO board);

	/**
	 * 게시물 등록
	 * @param board
	 * @param boardImg
	 * @return
	 */
	int insertBoard(BoardVO board, BoardImgVO boardImg);


}
