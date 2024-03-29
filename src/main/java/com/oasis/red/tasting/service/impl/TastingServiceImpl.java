package com.oasis.red.tasting.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oasis.red.tasting.domain.PageInfo;
import com.oasis.red.tasting.domain.TastingVO;
import com.oasis.red.tasting.domain.TastingVO;
import com.oasis.red.tasting.service.TastingService;
import com.oasis.red.tasting.store.TastingStore;

@Service
public class TastingServiceImpl implements TastingService{
	
	@Autowired
	private TastingStore tStore;
	@Autowired
	private SqlSession session;

	/**
	 * 공지사항 리스트 Service
	 */
	@Override
	public List<TastingVO> selectTastingList(PageInfo pInfo) {
		// TODO Auto-generated method stub
		List<TastingVO> tList = tStore.selectTastingList(session, pInfo);
		return tList;
	}

	/**
	 * 공지사항 상세조회 Service
	 */
	@Override
	public TastingVO selectByTastingNo(int TastingNo) {
		// TODO Auto-generated method stub
		TastingVO Tasting = tStore.selectByTastingNo(session, TastingNo);
		return Tasting;
	}

	/**
	 * 공지사항 검색 Service
	 */
	@Override
	public List<TastingVO> searchTastingByKeyword(PageInfo pInfo, Map<String, String> paramMap) {
		// TODO Auto-generated method stub
		List<TastingVO> searchList = tStore.selectTastingByKeyword(session, pInfo, paramMap);
		return searchList;
	}

	/**
	 * 전체 게시물 갯수 조회 Service
	 */
	@Override
	public int getTotalCount() {
		// TODO Auto-generated method stub
		int totalCount = tStore.selectTotalCount(session);
		return totalCount;
	}
	
	/**
	 * 검색 게시물 전체 갯수 Service
	 * @param paramMap
	 * @return int
	 */
	@Override
	public int getTotalCount(Map<String, String> paramMap) {
		int totalCount = tStore.selectTotalCount(session, paramMap);
		return totalCount;
	}

	/**
	 * 공지사항 등록 Service
	 */
	@Override
	public int insertTasting(TastingVO Tasting) {
		// TODO Auto-generated method stub
		int result = tStore.insertTasting(session, Tasting);
		return result;
	}

	/**
	 * 공지사항 수정 Service
	 */
	@Override
	public int updateTasting(TastingVO Tasting) {
		// TODO Auto-generated method stub
		int result = tStore.updateTasting(session, Tasting);
		return result;
	}

	/**
	 * 공지사항 삭제 Service
	 */
	@Override
	public int deleteTasting(int TastingNo) {
		// TODO Auto-generated method stub
		int result = tStore.deleteTasting(session, TastingNo);
		return result;
	}
	/**
	 * 3개
	 */
	@Override
	public List<TastingVO> selectLatestTastings(int i) {
		// TODO Auto-generated method stub
		return null;
	}

}
