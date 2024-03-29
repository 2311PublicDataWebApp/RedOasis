package com.oasis.red.tasting.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.oasis.red.tasting.domain.PageInfo;
import com.oasis.red.tasting.domain.TastingVO;
import com.oasis.red.tasting.domain.TastingVO;

public interface TastingService {

	/**
	 * 공지사항 리스트 Service
	 * @param pInfo 
	 * @return nList
	 */
	List<TastingVO> selectTastingList(PageInfo pInfo);

	/**
	 * 공지사항 상세조회 Service
	 * @param TastingNo
	 * @return Tasting
	 */
	TastingVO selectByTastingNo(int TastingNo);

	/**
	 * 공지사항 검색 Service
	 * @param pInfo 
	 * @param paramMap
	 * @return List
	 */
	List<TastingVO> searchTastingByKeyword(PageInfo pInfo, Map<String, String> paramMap);

	/**
	 * 전체 게시물 갯수 Service
	 * @return totalCount
	 */
	int getTotalCount();
	
	
	/**
	 * 검색 게시물 전체 갯수 Service
	 * @param paramMap
	 * @return int
	 */
	int getTotalCount(Map<String, String> paramMap);

	/**
	 * 공지사항 등록 Service
	 * @param Tasting
	 * @return result
	 */
	int insertTasting(TastingVO Tasting);

	/**
	 * 공지사항 수정 Service
	 * @param Tasting
	 * @return result
	 */
	int updateTasting(TastingVO Tasting);

	/**
	 * 공지사항 삭제 Service
	 * @param Tasting
	 * @return result
	 */
	int deleteTasting(int TastingNo);

	List<TastingVO> selectLatestTastings(int i);



}
