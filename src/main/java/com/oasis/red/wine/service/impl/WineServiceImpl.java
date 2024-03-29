package com.oasis.red.wine.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oasis.red.wine.domain.PageInfo;
import com.oasis.red.wine.domain.WineReplyVO;
import com.oasis.red.wine.domain.WineVO;
import com.oasis.red.wine.service.WineService;
import com.oasis.red.wine.store.WineStore;

@Service
public class WineServiceImpl implements WineService{
	@Autowired
	SqlSession session;
	@Autowired
	WineStore wStore;

	@Override
	public List<WineVO> selectWineList(PageInfo pInfo, String category) {
		List<WineVO> wList = wStore.selectWineList(session, pInfo, category);
		return wList;
	}

	@Override
	public int getTotalCountWine(String category) {
		int result = wStore.getTotalCountWine(session, category);
		return result;
	}

	@Override
	public List<WineVO> searchWineList(PageInfo pInfo, String keyword) {
		List<WineVO> wList = wStore.searchWineList(session, pInfo, keyword);
		return wList;
	}

	@Override
	public int getSearchCountWine(String keyword) {
		int result = wStore.getSearchCountWine(session, keyword);
		return result;
	}

	@Override
	public WineVO selectOneByWine(int wineNo) {
		WineVO wine = wStore.selectOneByWine(session, wineNo);
		return wine;
	}

	@Override
	public int insertWineReply(WineReplyVO reply) {
		int result = wStore.insertWineReply(reply, session);
		return result;
	}

	@Override
	public List<WineReplyVO> selectWineReply(int wineNo) {
		List<WineReplyVO> wrList = wStore.selectWineReply(session, wineNo);
		return wrList;
	}

	@Override
	public void wineScoreSet(List<WineReplyVO> wrList, int wineNo) {
		wStore.wineScoreSet(session, wrList, wineNo);
	}

	@Override
	public int wineReplyDelete(int commentNo) {
		int result = wStore.wineReplyDelete(session, commentNo);
		return result;
	}

}
