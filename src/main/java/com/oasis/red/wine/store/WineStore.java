package com.oasis.red.wine.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.oasis.red.wine.domain.PageInfo;
import com.oasis.red.wine.domain.WineReplyVO;
import com.oasis.red.wine.domain.WineVO;

public interface WineStore {

	/**
	 * 와인 목록 전체 조회 Store
	 * @param session
	 * @param pInfo 
	 * @param category 
	 * @return List<WineVO>
	 */
	List<WineVO> selectWineList(SqlSession session, PageInfo pInfo, String category);

	/**
	 * 와인 목록 수 조회 Store
	 * @param session
	 * @param category 
	 * @return int
	 */
	int getTotalCountWine(SqlSession session, String category);

	/**
	 * 와인 목록 검색 조회 Store
	 * @param session
	 * @param pInfo
	 * @param category
	 * @param keyword
	 * @return List<WineVO>
	 */
	List<WineVO> searchWineList(SqlSession session, PageInfo pInfo, String keyword);

	/**
	 * 와인 검색 수 조회 Store
	 * @param session
	 * @param keyword
	 * @return int
	 */
	int getSearchCountWine(SqlSession session, String keyword);

	/**
	 * 와인 정보 상세 조회 Store
	 * @param session
	 * @param wineNo
	 * @return WineVO
	 */
	WineVO selectOneByWine(SqlSession session, int wineNo);

	/**
	 * 와인 정보 댓글 등록 Store
	 * @param reply
	 * @param session
	 * @return int
	 */
	int insertWineReply(WineReplyVO reply, SqlSession session);

	/**
	 * 와인 정보 댓글 조회 Store
	 * @param session
	 * @param wineNo
	 * @return List<WineReplyVO>
	 */
	List<WineReplyVO> selectWineReply(SqlSession session, int wineNo);

	/**
	 * 와인 점수 계산 Store
	 * @param session
	 * @param wrList
	 * @param wineNo 
	 */
	void wineScoreSet(SqlSession session, List<WineReplyVO> wrList, int wineNo);

	/**
	 * 댓글 삭제 Store
	 * @param session
	 * @param commentNo
	 * @return int
	 */
	int wineReplyDelete(SqlSession session, int commentNo);

	/**
	 * 와인 전체 목록 가져오기
	 * @param session
	 * @return List<WineVO>
	 */
	List<WineVO> selectWineList(SqlSession session);

}
