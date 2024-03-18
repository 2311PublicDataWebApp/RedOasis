package com.oasis.red.admin.service;

import java.util.List;

import com.oasis.red.admin.domain.UserVO;

public interface AdminService {

	List<UserVO> selectUserList();

}
