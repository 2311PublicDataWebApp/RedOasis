package com.oasis.red.user.store.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


import com.oasis.red.user.domain.UserVO;
import com.oasis.red.user.store.UserStore;
@Repository
public class UserStoreImpl implements UserStore{

	@Override
	public int registerUser(SqlSession session, UserVO user) {
		int result = session.insert("UserMapper.registerUser", user);
		return result;
	}

	@Override
	public UserVO checkUserLogin(SqlSession session, UserVO user) {
		UserVO uOne = session.selectOne("UserMapper.checkUserLogin", user);
		return uOne;
	}

	@Override
	public UserVO selectOneById(SqlSession session, String userId) {
		UserVO user = session.selectOne("UserMapper.selectOneById", userId);
		return user;
	}

	@Override
	public int updateUser(SqlSession session, UserVO user) {
		int result = session.update("UserMapper.updateUser", user);
		return result;
	}

	@Override
	public int deleteUser(SqlSession session, String userId) {
		int result = session.delete("UserMapper.deleteUser", userId);
		return result;
	}

	@Override
	public String findIdByEmail(SqlSession session, String userEmail) {
		return session.selectOne("UserMapper.findIdByEmail", userEmail);
	}

	@Override
	public UserVO findUserByIdAndEmail(SqlSession session, UserVO user) {
		return session.selectOne("UserMapper.findUserByIdAndEmail", user);
	}

	@Override
	public int updatePassword(SqlSession session, UserVO user) {
		int result = session.update("UserMapper.updatePassword", user);
		return result;
	}

}
