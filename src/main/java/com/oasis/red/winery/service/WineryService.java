package com.oasis.red.winery.service;

import java.util.List;

import com.oasis.red.winery.domain.WineryReplyVO;
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

	/**
	 * 와이너리 댓글 등록 Service
	 * @param reply
	 * @return int
	 */
	public int wineryReplyRegister(WineryReplyVO reply);

	/**
	 * 와이너리 댓글 조회 Service
	 * @param wineryNo
	 * @return List<WineryReplyVO>
	 */
	public List<WineryReplyVO> selectWineryReply(int wineryNo);

	/**
	 * 와이너리 댓글 삭제 Service
	 * @param replyNo
	 * @return int
	 */
	public int wineryReplyDelete(int replyNo);

}
