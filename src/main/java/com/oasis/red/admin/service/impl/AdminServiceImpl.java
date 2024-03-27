package com.oasis.red.admin.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oasis.red.admin.domain.BoardVO;
import com.oasis.red.admin.domain.PageInfo;
import com.oasis.red.admin.domain.UserVO;
import com.oasis.red.admin.domain.WineVO;
import com.oasis.red.admin.domain.WineryVO;
import com.oasis.red.admin.service.AdminService;
import com.oasis.red.admin.store.AdminStore;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminStore aStore;
	@Autowired
	private SqlSession session;
	
	@Override
	public int selectTotalCountUser() {
		Integer totalCount = aStore.selectTotalCountUser(session);
		return totalCount;
	}

	@Override
	public List<UserVO> selectUserList(PageInfo pInfo, String sortList) {
		List<UserVO> uList = aStore.selectUserList(session, pInfo, sortList);
		return uList;
	}

	@Override
	public int selectTotalCountBoard() {
		Integer totalCount = aStore.selectTotalCountBoard(session);
		return totalCount;
	}

	@Override
	public List<BoardVO> selectBoardList(PageInfo pInfo, String sortList) {
		List<BoardVO> bList = aStore.selectBoardList(session, pInfo, sortList);
		return bList;
	}

	@Override
	public int wineRegister(WineVO wine) {
		int result = aStore.wineRegister(session, wine);
		return result;
	}

	@Override
	public int selectTotalCountWinery() {
		Integer totalCount = aStore.selectTotalCountWinery(session);
		return totalCount;
	}

	@Override
	public List<WineryVO> selectWineryList(PageInfo pInfo, String sortList) {
		List<WineryVO> wryList = aStore.selectWineryList(session, pInfo, sortList);
		return wryList;
	}

	@Override
	public int wineryInsert(WineryVO winery) {
		int result = aStore.wineryInsert(session, winery);
		return result;
	}

}
