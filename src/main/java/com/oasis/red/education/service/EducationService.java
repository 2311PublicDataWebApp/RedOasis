package com.oasis.red.education.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.oasis.red.education.domain.EducationVO;
import com.oasis.red.education.domain.PageInfo;


public interface EducationService {

	/**
	 * 공지사항 리스트 Service
	 * @param pInfo 
	 * @return nList
	 */
	List<EducationVO> selecteducationList(PageInfo pInfo);

	/**
	 * 공지사항 상세조회 Service
	 * @param educationNo
	 * @return education
	 */
	EducationVO selectByeducationNo(int educationNo);

	/**
	 * 공지사항 검색 Service
	 * @param pInfo 
	 * @param paramMap
	 * @return List
	 */
	List<EducationVO> searcheducationByKeyword(PageInfo pInfo, Map<String, String> paramMap);

	/**
	 * 전체 게시물 갯수 Service
	 * @return totalCount
	 */
	int getTotalCount();
	
	
	/**
	 * 검색 게시물 전체 갯수 Service
	 * @param paramMap
	 * @return int
	 */
	int getTotalCount(Map<String, String> paramMap);

	/**
	 * 공지사항 등록 Service
	 * @param education
	 * @return result
	 */
	int inserteducation(EducationVO education);

	/**
	 * 공지사항 수정 Service
	 * @param education
	 * @return result
	 */
	int updateeducation(EducationVO education);

	/**
	 * 공지사항 삭제 Service
	 * @param education
	 * @return result
	 */
	int deleteeducation(int educationNo);



}
