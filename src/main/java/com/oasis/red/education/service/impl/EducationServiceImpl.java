package com.oasis.red.education.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oasis.red.education.domain.EducationVO;
import com.oasis.red.education.domain.PageInfo;
import com.oasis.red.education.service.EducationService;
import com.oasis.red.education.store.EducationStore;


@Service
public class EducationServiceImpl implements EducationService{
	
	@Autowired
	private EducationStore eStore;
	@Autowired
	private SqlSession session;

	/**
	 * 공지사항 리스트 Service
	 */
	@Override
	public List<EducationVO> selecteducationList(PageInfo pInfo) {
		// TODO Auto-generated method stub
		List<EducationVO> eList = eStore.selecteducationList(session, pInfo);
		return eList;
	}

	/**
	 * 공지사항 상세조회 Service
	 */
	@Override
	public EducationVO selectByeducationNo(int educationNo) {
		// TODO Auto-generated method stub
		EducationVO education = eStore.selectByeducationNo(session, educationNo);
		return education;
	}

	/**
	 * 공지사항 검색 Service
	 */
	@Override
	public List<EducationVO> searcheducationByKeyword(PageInfo pInfo, Map<String, String> paramMap) {
		// TODO Auto-generated method stub
		List<EducationVO> searchList = eStore.selecteducationByKeyword(session, pInfo, paramMap);
		return searchList;
	}

	/**
	 * 전체 게시물 갯수 조회 Service
	 */
	@Override
	public int getTotalCount() {
		// TODO Auto-generated method stub
		int totalCount = eStore.selectTotalCount(session);
		return totalCount;
	}
	
	/**
	 * 검색 게시물 전체 갯수 Service
	 * @param paramMap
	 * @return int
	 */
	@Override
	public int getTotalCount(Map<String, String> paramMap) {
		int totalCount = eStore.selectTotalCount(session, paramMap);
		return totalCount;
	}

	/**
	 * 공지사항 등록 Service
	 */
	@Override
	public int inserteducation(EducationVO education) {
		// TODO Auto-generated method stub
		int result = eStore.inserteducation(session, education);
		return result;
	}

	/**
	 * 공지사항 수정 Service
	 */
	@Override
	public int updateeducation(EducationVO education) {
		// TODO Auto-generated method stub
		int result = eStore.updateeducation(session, education);
		return result;
	}

	/**
	 * 공지사항 삭제 Service
	 */
	@Override
	public int deleteeducation(int educationNo) {
		// TODO Auto-generated method stub
		int result = eStore.deleteeducation(session, educationNo);
		return result;
	}

}

