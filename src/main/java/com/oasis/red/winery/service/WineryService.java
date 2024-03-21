package com.oasis.red.winery.service;

import java.util.List;

import com.oasis.red.winery.domain.WineryVO;

public interface WineryService {

	/**
	 * 와이너리 정보 목록 Service
	 * @return List<WineryVO>
	 */
	public List<WineryVO> selectWinery();

	/**
	 * 와이너리 상세 조회 Service
	 * @param wineryNo
	 * @return WineryVO
	 */
	public WineryVO selectOneByWinery(int wineryNo);

}
