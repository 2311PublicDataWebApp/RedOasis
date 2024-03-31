package com.oasis.red.tasting.store;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.oasis.red.tasting.domain.PageInfo;
import com.oasis.red.tasting.domain.TastingVO;

public interface TastingStore {

	/**
	 * 공지사항 리스트 Store
	 * @param session
	 * @param pInfo 
	 * @return tList
	 */
	List<TastingVO> selectTastingList(SqlSession session, PageInfo pInfo);

	/**
	 * 공지사항 상세조회 Store
	 * @param TastingNo
	 * @return Tasting
	 */
	TastingVO selectByTastingNo(SqlSession session, int TastingNo);

	/**
	 * 공지사항 검색 Store
	 * @param session
	 * @param pInfo 
	 * @param paramMap
	 * @return List
	 */
	List<TastingVO> selectTastingByKeyword(SqlSession session, PageInfo pInfo, Map<String, String> paramMap);

	/**
	 * 전체 게시물 갯수 Store
	 * @return totalCount
	 */
	int selectTotalCount(SqlSession session);
	
	/**
	 * 검색 게시물 갯수 Store
	 * @param session
	 * @param paramMap
	 * @return int
	 */
	int selectTotalCount(SqlSession session, Map<String, String> paramMap);

	/**
	 * 공지사항 등록 Store
	 * @param session
	 * @param Tasting
	 * @return result
	 */
	int insertTasting(SqlSession session, TastingVO Tasting);

	/**
	 * 공지사항 수정 Store
	 * @param Tasting
	 * @return result
	 */
	int updateTasting(SqlSession session, TastingVO Tasting);

	/**
	 * 공지사항 삭제 Store
	 * @param Tasting
	 * @return result
	 */
	int deleteTasting(SqlSession session, int TastingNo);

}
