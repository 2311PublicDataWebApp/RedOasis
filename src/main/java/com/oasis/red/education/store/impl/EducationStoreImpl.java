package com.oasis.red.education.store.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.oasis.red.education.domain.EducationVO;
import com.oasis.red.education.domain.PageInfo;
import com.oasis.red.education.store.EducationStore;


@Repository
public class EducationStoreImpl implements EducationStore{

	/**
	 * 공지사항 리스트 Store
	 * @param pInfo 
	 * @return tList
	 */
	@Override
	public List<EducationVO> selecteducationList(SqlSession session, PageInfo pInfo) {
		int limit = pInfo.getRecordCountPerPage();
		int offset = (pInfo.getCurrentPage() - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<EducationVO> tList = session.selectList("EducationMapper.selecteducationList", null, rowBounds);
		return tList;
	}

	/**
	 * 공지사항 상세조회 Store
	 * @param educationNo
	 * @return education
	 */
	@Override
	public EducationVO selectByeducationNo(SqlSession session, int educationNo) {
		EducationVO education = session.selectOne("EducationMapper.selectByeducationNo", educationNo);
		return education;
	}
	
	/**
	 * 공지사항 검색 Store
	 */
	@Override
	public List<EducationVO> selecteducationByKeyword(SqlSession session, PageInfo pInfo, Map<String, String> paramMap) {
		int limit = pInfo.getRecordCountPerPage();
		int offset = (pInfo.getCurrentPage() - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<EducationVO> searchList = session.selectList("EducationMapper.selecteducationsByKeyword", paramMap, rowBounds);
		return searchList;
	}

	/**
	 * 전체 게시물 갯수 Store
	 * @return totalCount
	 */
	@Override
	public int selectTotalCount(SqlSession session) {
		// TODO Auto-generated method stub
		int totalCount = session.selectOne("EducationMapper.selectTotalCount");
		return totalCount;
	}
	
	/**
	 * 검색 게시물 갯수 Store
	 * @return totalCount
	 */
	@Override
	public int selectTotalCount(SqlSession session, Map<String, String> paramMap) {
		// TODO Auto-generated method stub
		int totalCount = session.selectOne("EducationMapper.searchTotalCount", paramMap);
		return totalCount;
	}

	/**
	 * 공지사항 등록 Store
	 * @param education
	 * @return result
	 */
	@Override
	public int inserteducation(SqlSession session, EducationVO education) {
		// TODO Auto-generated method stub
		int result = session.insert("EducationMapper.inserteducation", education);
		return result;
	}

	/**
	 * 공지사항 수정 Store
	 * @param education
	 * @return result
	 */
	@Override
	public int updateeducation(SqlSession session, EducationVO education) {
		int result = session.update("EducationMapper.updateeducation", education);
		return result;
	}

	/**
	 * 공지사항 삭제 Store
	 * @param education
	 * @return result
	 */
	@Override
	public int deleteeducation(SqlSession session, int educationNo) {
		int result = session.delete("EducationMapper.deleteeducation", educationNo);
		return result;
	}


}
