package com.oasis.red.wine.service;

import java.util.List;

import com.oasis.red.wine.domain.PageInfo;
import com.oasis.red.wine.domain.WineVO;

public interface WineService {

	/**
	 * 와인 목록 전체 조회 Service
	 * @param pInfo 
	 * @param category 
	 * @return List<WineVO>
	 */
	List<WineVO> selectWineList(PageInfo pInfo, String category);

	/**
	 * 와인 목록 수 조회 Service
	 * @param category 
	 * @return int
	 */
	int getTotalCountWine(String category);

	/**
	 * 와인 목록 검색 조회 Service
	 * @param pInfo
	 * @param category
	 * @param keyword
	 * @return List<WineVO>
	 */
	List<WineVO> searchWineList(PageInfo pInfo, String keyword);

	/**
	 * 와인 검색 수 조회 Service
	 * @param keyword
	 * @return int
	 */
	int getSearchCountWine(String keyword);

	/**
	 * 와인 정보 상세 보기 Service
	 * @param wineNo
	 * @return WineVO
	 */
	WineVO selectOneByWine(int wineNo);

}
