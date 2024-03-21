package com.oasis.red.user.service;

import com.oasis.red.user.domain.UserVO;

public interface UserService {
	/**
	 * 회원 가입
	 * @param user
	 * @return result
	 */
	int registerUser(UserVO user);
	
	/**
	 * 로그인
	 * @param user
	 * @return
	 */
	UserVO checkUserLogin(UserVO user);
	
	/**
	 * 아이디 찾기
	 * @param email
	 * @return
	 * @throws Exception
	 */
	String findIdByEmail(String userEmail);

	/**
	 * 비밀번호 찾기
	 * @param userId
	 * @param userEmail
	 * @return
	 */
	UserVO getUserByIdAndEmail(UserVO mParam);

	/**
	 * 비밀번호 변경하기
	 * @param userId
	 * @param userPw
	 * @return 
	 */
	int changePassword(UserVO user);
		
	/**
	 * 회원 아이디 검색 Service
	 * @param userId
	 * @return uOne
	 */
	UserVO getOneById(String userId);
	
	/**
	 * 회원 정보 수정 Service
	 * @param user
	 * @return result
	 */
	int updateUser(UserVO user);
	
	/**
	 * 회원 정보 삭제 Service
	 * @param userId
	 * @return result
	 */ 
	int deleteUser(String userId);
}
