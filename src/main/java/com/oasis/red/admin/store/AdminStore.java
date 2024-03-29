package com.oasis.red.admin.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.oasis.red.admin.domain.BoardVO;
import com.oasis.red.admin.domain.PageInfo;
import com.oasis.red.admin.domain.UserVO;
import com.oasis.red.admin.domain.WineVO;
import com.oasis.red.admin.domain.WineryVO;

public interface AdminStore {

	int selectTotalCountUser(SqlSession session);

	List<UserVO> selectUserList(SqlSession session, PageInfo pInfo, String sortList);

	int deleteUser(SqlSession session, String userId);

	Integer selectTotalCountBoard(SqlSession session);

	List<BoardVO> selectBoardList(SqlSession session, PageInfo pInfo, String sortList);

	BoardVO selectBoardOne(SqlSession session, int boardNo);

	int boardUpdate(SqlSession session, BoardVO boardOne);

	int deleteBoard(SqlSession session, int boardNo);

	Integer selectTotalCountWine(SqlSession session);

	List<WineVO> selectWineList(SqlSession session, PageInfo pInfo, String sortList);

	int wineRegister(SqlSession session, WineVO wine);

	WineVO selectWineOne(SqlSession session, int wineNo);

	int wineUpdate(SqlSession session, WineVO wine);

	int deleteWine(SqlSession session, int wineNo);

	Integer selectTotalCountWinery(SqlSession session);

	List<WineryVO> selectWineryList(SqlSession session, PageInfo pInfo, String sortList);

	int wineryInsert(SqlSession session, WineryVO winery);

	WineryVO selectWineryOne(SqlSession session, int wineryNo);

	int wineryUpdate(SqlSession session, WineryVO wineryOne);

	int deleteWinery(SqlSession session, int wineryNo);

}
