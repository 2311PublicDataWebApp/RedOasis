package com.oasis.red.admin.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.oasis.red.admin.domain.BoardVO;
import com.oasis.red.admin.domain.PageInfo;
import com.oasis.red.admin.domain.UserVO;
import com.oasis.red.admin.domain.WineryVO;

public interface AdminStore {

	int selectTotalCountUser(SqlSession session);

	List<UserVO> selectUserList(SqlSession session, PageInfo pInfo, String sortList);

	Integer selectTotalCountBoard(SqlSession session);

	List<BoardVO> selectBoardList(SqlSession session, PageInfo pInfo, String sortList);

	Integer selectTotalCountWinery(SqlSession session);

	List<WineryVO> selectWineryList(SqlSession session, PageInfo pInfo, String sortList);

}
