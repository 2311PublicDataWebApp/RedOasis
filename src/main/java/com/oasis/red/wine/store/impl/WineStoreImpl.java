package com.oasis.red.wine.store.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.oasis.red.wine.domain.PageInfo;
import com.oasis.red.wine.domain.WineReplyVO;
import com.oasis.red.wine.domain.WineVO;
import com.oasis.red.wine.store.WineStore;

@Repository
public class WineStoreImpl implements WineStore{

	@Override
	public List<WineVO> selectWineList(SqlSession session, PageInfo pInfo, String category) {
		int limit = pInfo.getRecordCountPerPage();
		int offset = (pInfo.getCurrentPage()-1)*limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		Map<String, Object> params = new HashMap<>();
	    params.put("rowBounds", rowBounds);
	    params.put("category", category);
		
		List<WineVO> wList = session.selectList("WineMapper.selectWineList", params, rowBounds);
		return wList;
	}

	//와인 목록 수
	@Override
	public int getTotalCountWine(SqlSession session, String category) {
		Map<String, Object> params = new HashMap<>();
		params.put("category", category);
		int result = session.selectOne("WineMapper.selectTotalCountWine", params);
		return result;
	}

	//와인목록 검색 조회
	@Override
	public List<WineVO> searchWineList(SqlSession session, PageInfo pInfo, String keyword) {
		int limit = pInfo.getRecordCountPerPage();
		int offset = (pInfo.getCurrentPage()-1)*limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		Map<String, Object> params = new HashMap<>();
		params.put("keyword", keyword);
	    params.put("rowBounds", rowBounds);
		
		List<WineVO> wList = session.selectList("WineMapper.searchWineList", params, rowBounds);
		return wList;
	}

	//와인 검색 수
	@Override
	public int getSearchCountWine(SqlSession session, String keyword) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("keyword", keyword);
		int result = session.selectOne("WineMapper.searchTotalCountWine", params);
		return result;
	}

	//와인 상세 조회
	@Override
	public WineVO selectOneByWine(SqlSession session, int wineNo) {
		WineVO wine = session.selectOne("WineMapper.oneByWine", wineNo);
		return wine;
	}

	//와인 댓글 등록
	@Override
	public int insertWineReply(WineReplyVO reply, SqlSession session) {
		int result = session.insert("WineReplyMapper.wineReplyInsert", reply);
		return result;
	}

	//와인 댓글 조회
	@Override
	public List<WineReplyVO> selectWineReply(SqlSession session, int wineNo) {
		List<WineReplyVO> wrList = session.selectList("WineReplyMapper.wineReplySelect", wineNo);
		return wrList;
	}

	//와인 점수 계산
	@Override
	public void wineScoreSet(SqlSession session, List<WineReplyVO> wrList, int wineNo) {
		Map<String, Object> params = new HashMap<String, Object>();
		double avg = 0;
		int sum = 0;
		for(WineReplyVO reply : wrList) {
			sum += reply.getCommentScore();
		}
		avg = sum / (double)wrList.size();
		avg = Math.round((avg * 10) / 10.0);
		params.put("wineNo", wineNo);
		params.put("average", avg);
		session.update("WineMapper.wineScoreSet", params);
	}

	//와인 댓글 삭제
	@Override
	public int wineReplyDelete(SqlSession session, int commentNo) {
		int result = session.delete("WineReplyMapper.wineReplyDelete", commentNo);
		return result;
	}

}
