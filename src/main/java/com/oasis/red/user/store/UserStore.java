package com.oasis.red.user.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;


import com.oasis.red.user.domain.UserVO;

public interface UserStore {

	int registerUser(SqlSession session, UserVO user);
	/**
	 * 회원 로그인 Store
	 * @param session
	 * @param user
	 * @return uOne
	 */
	UserVO checkUserLogin(SqlSession session, UserVO user);
	
	/**
	 * 회원 아이디 검색 Store
	 * @param session
	 * @param userId
	 * @return result
	 */
	UserVO selectOneById(SqlSession session, String userId);
	/**
	 * 회원 정보 수정 Store
	 * @param session
	 * @param user
	 * @return result
	 */
	int updateUser(SqlSession session, UserVO user);
	
	/**
	 * 회원 정보 삭제 Store
	 * @param session
	 * @param memberId
	 * @return result
	 */
	int deleteUser(SqlSession session, String userId);

	/**
	 * 회원 아이디 찾기 store
	 * @param email
	 * @return
	 * @throws result
	 */
	String findIdByEmail(SqlSession session, String userEmail);

	/**
	 * 비밀번호 찾기
	 * @param userId
	 * @param userEmail
	 * @return
	 */
	UserVO findUserByIdAndEmail(SqlSession session, UserVO user);
	
	/**
	 * 비밀번호 변경하기 Store
	 * @param userId
	 * @param userPw
	 */
	int updatePassword(SqlSession session, UserVO user);
	
	/**
	 * 회원 전체 개수 Store
	 * @param session
	 * @return int
	 */
	//int getTotalCount(SqlSession session);

	/**
	 * 회원 리스트 Store
	 * @param session
	 * @param pInfo
	 * @return List<MemberVO>
	 */
	//List<MemberVO> selectMemberList(SqlSession session, PageInfo pInfo);

}
