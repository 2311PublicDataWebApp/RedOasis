package com.oasis.red.winery.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oasis.red.winery.domain.WineryVO;
import com.oasis.red.winery.service.WineryService;
import com.oasis.red.winery.store.WineryStore;

@Service
public class WineryServiceImpl implements WineryService{
	@Autowired
	SqlSession session;
	@Autowired
	WineryStore wStore;
	
	@Override
	public List<WineryVO> selectWinery() {
		List<WineryVO> wList = wStore.selectWinery(session);
		return wList;
	}

	@Override
	public WineryVO selectOneByWinery(int wineryNo) {
		WineryVO winery = wStore.selectOneByWinery(session, wineryNo);
		return winery;
	}

}
