package com.oasis.red.admin.store.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.oasis.red.admin.domain.UserVO;
import com.oasis.red.admin.store.AdminStore;

@Repository
public class AdminStoreImpl implements AdminStore{

	@Override
	public List<UserVO> selectUserList(SqlSession session) {
		List<UserVO> uList = session.selectList("AdminMapper.selectUserList");
		return uList;
	}

}
