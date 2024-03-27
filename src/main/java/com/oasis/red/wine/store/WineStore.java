package com.oasis.red.wine.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.oasis.red.wine.domain.PageInfo;
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

}
