package com.oasis.red.user.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.oasis.red.user.domain.UserVO;
import com.oasis.red.user.service.UserService;
import com.oasis.red.user.store.UserStore;
@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserStore uStore;
	@Autowired
	private SqlSession session;
	
	@Override
	public int registerUser(UserVO user) {
		int result = uStore.registerUser(session, user);
		return result;
	}

	@Override
	public UserVO checkUserLogin(UserVO user) {
		UserVO uOne = uStore.checkUserLogin(session, user);
		// TODO Auto-generated method stub
		return uOne;
	}

	@Override
	public UserVO getOneById(String userId) {
		UserVO user = uStore.selectOneById(session, userId);
		return user;
	}

	@Override
	public int updateUser(UserVO user) {
		int result = uStore.updateUser(session, user);
		return result;
	}

	@Override
	public int deleteUser(String userId) {
		int result = uStore.deleteUser(session, userId);
		return result;
	}

	@Override
	public String findIdByEmail(String userEmail) {
		// TODO Auto-generated method stub
		return uStore.findIdByEmail(session, userEmail);
	}

	@Override
	public UserVO getUserByIdAndEmail(UserVO user) {
		return uStore.findUserByIdAndEmail(session, user);
	}

	@Override
	public int changePassword(UserVO user) {
		int result = uStore.updatePassword(session, user);
		return result;
	}
	
}
