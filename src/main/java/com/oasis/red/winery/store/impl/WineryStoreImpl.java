package com.oasis.red.winery.store.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.oasis.red.winery.domain.WineryVO;
import com.oasis.red.winery.store.WineryStore;

@Repository
public class WineryStoreImpl implements WineryStore{

	@Override
	public List<WineryVO> selectWinery(SqlSession session) {
		List<WineryVO> wList = session.selectList("WineryMapper.selectWineryList");
		return wList;
	}

	@Override
	public WineryVO selectOneByWinery(SqlSession session, int wineryNo) {
		WineryVO winery = session.selectOne("WineryMapper.selectOneByWinery", wineryNo);
		return winery;
	}

}
