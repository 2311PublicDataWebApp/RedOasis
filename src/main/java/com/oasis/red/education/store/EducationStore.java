package com.oasis.red.education.store;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.oasis.red.education.domain.EducationVO;
import com.oasis.red.education.domain.PageInfo;


public interface EducationStore {

	/**
	 * 공지사항 리스트 Store
	 * @param session
	 * @param pInfo 
	 * @return tList
	 */
	List<EducationVO> selecteducationList(SqlSession session, PageInfo pInfo);

	/**
	 * 공지사항 상세조회 Store
	 * @param educationNo
	 * @return education
	 */
	EducationVO selectByeducationNo(SqlSession session, int educationNo);

	/**
	 * 공지사항 검색 Store
	 * @param session
	 * @param pInfo 
	 * @param paramMap
	 * @return List
	 */
	List<EducationVO> selecteducationByKeyword(SqlSession session, PageInfo pInfo, Map<String, String> paramMap);

	/**
	 * 전체 게시물 갯수 Store
	 * @return totalCount
	 */
	int selectTotalCount(SqlSession session);
	
	/**
	 * 검색 게시물 갯수 Store
	 * @param session
	 * @param paramMap
	 * @return int
	 */
	int selectTotalCount(SqlSession session, Map<String, String> paramMap);

	/**
	 * 공지사항 등록 Store
	 * @param session
	 * @param education
	 * @return result
	 */
	int inserteducation(SqlSession session, EducationVO education);

	/**
	 * 공지사항 수정 Store
	 * @param education
	 * @return result
	 */
	int updateeducation(SqlSession session, EducationVO education);

	/**
	 * 공지사항 삭제 Store
	 * @param education
	 * @return result
	 */
	int deleteeducation(SqlSession session, int educationNo);

}
