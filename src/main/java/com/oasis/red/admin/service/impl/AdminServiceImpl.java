package com.oasis.red.admin.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oasis.red.admin.domain.UserVO;
import com.oasis.red.admin.service.AdminService;
import com.oasis.red.admin.store.AdminStore;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminStore aStore;
	@Autowired
	private SqlSession session;
	
	@Override
	public List<UserVO> selectUserList() {
		List<UserVO> uList = aStore.selectUserList(session);
		return uList;
	}

}
