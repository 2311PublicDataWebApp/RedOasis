package com.oasis.red.admin.service;

import java.util.List;

import com.oasis.red.admin.domain.BoardVO;
import com.oasis.red.admin.domain.PageInfo;
import com.oasis.red.admin.domain.UserVO;
import com.oasis.red.admin.domain.WineVO;
import com.oasis.red.admin.domain.WineryVO;



public interface AdminService {

	int selectTotalCountUser();

	List<UserVO> selectUserList(PageInfo pInfo, String sortList);

	int deleteUser(String userId);

	int selectTotalCountBoard();

	List<BoardVO> selectBoardList(PageInfo pInfo, String sortList);

	BoardVO selectBoardOne(int boardNo);

	int boardUpdate(BoardVO boardOne);

	int deleteBoard(int boardNo);

	int selectTotalCountWine();

	List<WineVO> selectWineList(PageInfo pInfo, String sortList);

	int wineRegister(WineVO wine);

	WineVO selectWineOne(int wineNo);

	int wineUpdate(WineVO wine);

	int deleteWine(int wineNo);

	int selectTotalCountWinery();

	List<WineryVO> selectWineryList(PageInfo pInfo, String sortList);
	
	int wineryInsert(WineryVO winery);

	WineryVO selectWineryOne(int wineryNo);

	int wineryUpdate(WineryVO wineryOne);

	int deleteWinery(int wineryNo);

}
