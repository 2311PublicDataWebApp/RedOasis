package com.oasis.red.admin.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.oasis.red.admin.domain.UserVO;

public interface AdminStore {

	List<UserVO> selectUserList(SqlSession session);

}
