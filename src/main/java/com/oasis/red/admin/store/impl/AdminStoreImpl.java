package com.oasis.red.admin.store.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.oasis.red.admin.domain.BoardVO;
import com.oasis.red.admin.domain.PageInfo;
import com.oasis.red.admin.domain.UserVO;
import com.oasis.red.admin.domain.WineVO;
import com.oasis.red.admin.domain.WineryVO;
import com.oasis.red.admin.store.AdminStore;

@Repository
public class AdminStoreImpl implements AdminStore{
	
	@Override
	public int selectTotalCountUser(SqlSession session) {
		Integer totalCount = session.selectOne("AdminMapper.selectTotalCountUser");
		return totalCount;
	}

	@Override
	public List<UserVO> selectUserList(SqlSession session, PageInfo pInfo, String sortList) {
		int limit = pInfo.getRecordCountPerPage();
		int offset = (pInfo.getCurrentPage()-1)*limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
	    // 정렬을 위한 SQL 쿼리 조건 생성
	    Map<String, Object> params = new HashMap<>();
	    params.put("rowBounds", rowBounds);
	    params.put("sortList", sortList);
	    // 사용자 리스트 조회
	    List<UserVO> uList = session.selectList("AdminMapper.selectUserList");
	    return uList;
	}

	@Override
	public Integer selectTotalCountBoard(SqlSession session) {
		Integer totalCount = session.selectOne("AdminMapper.selectTotalCountBoard");
		return totalCount;
	}

	@Override
	public List<BoardVO> selectBoardList(SqlSession session, PageInfo pInfo, String sortList) {
		int limit = pInfo.getRecordCountPerPage();
		int offset = (pInfo.getCurrentPage()-1)*limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
	    // 정렬을 위한 SQL 쿼리 조건 생성
	    Map<String, Object> params = new HashMap<>();
	    params.put("rowBounds", rowBounds);
	    params.put("sortList", sortList);
	    // 게시글 리스트 조회
	    List<BoardVO> bList = session.selectList("AdminMapper.selectBoardList");
		return bList;
	}

	@Override
	public Integer selectTotalCountWine(SqlSession session) {
		Integer totalCount = session.selectOne("AdminMapper.selectTotalCountWine");
		return totalCount;
	}

	@Override
	public List<WineVO> selectWineList(SqlSession session, PageInfo pInfo, String sortList) {
		List<WineVO> wList = session.selectList("AdminMapper.selectWineList");
		return wList;
	}

	@Override
	public int wineRegister(SqlSession session, WineVO wine) {
		int result = session.insert("AdminMapper.wineRegister", wine);
		return result;
	}

	@Override
	public WineVO selectWineOne(SqlSession session, int wineNo) {
		WineVO wineOne = session.selectOne("AdminMapper.selectWineOne",wineNo);
		return wineOne;
	}

	@Override
	public int wineUpdate(SqlSession session, WineVO wine) {
		int result = session.update("AdminMapper.wineUpdate", wine);
		return result;
	}

	@Override
	public Integer selectTotalCountWinery(SqlSession session) {
		Integer totalCount = session.selectOne("AdminMapper.selectTotalCountWinery");
		return totalCount;
	}

	@Override
	public List<WineryVO> selectWineryList(SqlSession session, PageInfo pInfo, String sortList) {
		int limit = pInfo.getRecordCountPerPage();
		int offset = (pInfo.getCurrentPage()-1)*limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
	    // 정렬을 위한 SQL 쿼리 조건 생성
	    Map<String, Object> params = new HashMap<>();
	    params.put("rowBounds", rowBounds);
	    params.put("sortList", sortList);
	    // 게시글 리스트 조회
	    List<WineryVO> wryList = session.selectList("AdminMapper.selectWineryList");
		return wryList;
	}

	@Override
	public int wineryInsert(SqlSession session, WineryVO winery) {
		int result = session.insert("AdminMapper.insertWinery", winery);
		return result;
	}


}
