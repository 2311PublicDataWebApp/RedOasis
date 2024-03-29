package com.oasis.red.tasting.store.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.oasis.red.tasting.domain.PageInfo;
import com.oasis.red.tasting.domain.TastingVO;
import com.oasis.red.tasting.domain.TastingVO;
import com.oasis.red.tasting.store.TastingStore;

@Repository
public class TastingStoreImpl implements TastingStore{

	/**
	 * 공지사항 리스트 Store
	 * @param pInfo 
	 * @return tList
	 */
	@Override
	public List<TastingVO> selectTastingList(SqlSession session, PageInfo pInfo) {
		int limit = pInfo.getRecordCountPerPage();
		int offset = (pInfo.getCurrentPage() - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<TastingVO> tList = session.selectList("TastingMapper.selectTastingList", null, rowBounds);
		return tList;
	}

	/**
	 * 공지사항 상세조회 Store
	 * @param TastingNo
	 * @return Tasting
	 */
	@Override
	public TastingVO selectByTastingNo(SqlSession session, int TastingNo) {
		TastingVO Tasting = session.selectOne("TastingMapper.selectByTastingNo", TastingNo);
		return Tasting;
	}
	
	/**
	 * 공지사항 검색 Store
	 */
	@Override
	public List<TastingVO> selectTastingByKeyword(SqlSession session, PageInfo pInfo, Map<String, String> paramMap) {
		int limit = pInfo.getRecordCountPerPage();
		int offset = (pInfo.getCurrentPage() - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<TastingVO> searchList = session.selectList("TastingMapper.selectTastingsByKeyword", paramMap, rowBounds);
		return searchList;
	}

	/**
	 * 전체 게시물 갯수 Store
	 * @return totalCount
	 */
	@Override
	public int selectTotalCount(SqlSession session) {
		// TODO Auto-generated method stub
		int totalCount = session.selectOne("TastingMapper.selectTotalCount");
		return totalCount;
	}
	
	/**
	 * 검색 게시물 갯수 Store
	 * @return totalCount
	 */
	@Override
	public int selectTotalCount(SqlSession session, Map<String, String> paramMap) {
		// TODO Auto-generated method stub
		int totalCount = session.selectOne("TastingMapper.searchTotalCount", paramMap);
		return totalCount;
	}

	/**
	 * 공지사항 등록 Store
	 * @param Tasting
	 * @return result
	 */
	@Override
	public int insertTasting(SqlSession session, TastingVO Tasting) {
		// TODO Auto-generated method stub
		int result = session.insert("TastingMapper.insertTasting", Tasting);
		return result;
	}

	/**
	 * 공지사항 수정 Store
	 * @param Tasting
	 * @return result
	 */
	@Override
	public int updateTasting(SqlSession session, TastingVO Tasting) {
		int result = session.update("TastingMapper.updateTasting", Tasting);
		return result;
	}

	/**
	 * 공지사항 삭제 Store
	 * @param Tasting
	 * @return result
	 */
	@Override
	public int deleteTasting(SqlSession session, int TastingNo) {
		int result = session.delete("TastingMapper.deleteTasting", TastingNo);
		return result;
	}


}
