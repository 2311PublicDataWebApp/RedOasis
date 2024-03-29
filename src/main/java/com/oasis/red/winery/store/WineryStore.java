package com.oasis.red.winery.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.oasis.red.winery.domain.WineryReplyVO;
import com.oasis.red.winery.domain.WineryVO;

public interface WineryStore {

	/**
	 * 와이너리 정보 목록 Store
	 * @param session
	 * @return List<WineryVO>
	 */
	List<WineryVO> selectWinery(SqlSession session);

	/**
	 * 와이너리 상세 조회 Store
	 * @param session
	 * @param wineryNo
	 * @return WineryVO
	 */
	WineryVO selectOneByWinery(SqlSession session, int wineryNo);

	/**
	 * 와이너리 댓글 등록 Store
	 * @param session
	 * @param reply
	 * @return int
	 */
	int wineryReplyRegister(SqlSession session, WineryReplyVO reply);

	/**
	 * 와이너리 댓글 조회 Store
	 * @param session
	 * @param wineryNo
	 * @return List<WineryReplyVO>
	 */
	List<WineryReplyVO> selectWineryReply(SqlSession session, int wineryNo);

	/**
	 * 와이너리 댓글 삭제 Store
	 * @param session
	 * @param replyNo
	 * @return int
	 */
	int wineryReplyDelete(SqlSession session, int replyNo);

}
