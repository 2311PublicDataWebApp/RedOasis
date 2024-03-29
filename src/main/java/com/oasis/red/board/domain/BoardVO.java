package com.oasis.red.board.domain;

import java.sql.Date;
import java.sql.Timestamp;

public class BoardVO {
	private int boardNo;
	private String boardName;
	private String boardContent;
	private String userId;
	private Date boardDate;
	private Timestamp updateDate;
	
	public BoardVO() {}
	
	

	public BoardVO(int boardNo, String boardName, String boardContent, String userId, Date boardDate,
			Timestamp updateDate) {
		super();
		this.boardNo = boardNo;
		this.boardName = boardName;
		this.boardContent = boardContent;
		this.userId = userId;
		this.boardDate = boardDate;
		this.updateDate = updateDate;
	}



	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getBoardName() {
		return boardName;
	}

	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public Date getBoardDate() {
		return boardDate;
	}

	public void setBoardDate(Date boardDate) {
		this.boardDate = boardDate;
	}

	public Timestamp getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Timestamp updateDate) {
		this.updateDate = updateDate;
	}

	@Override
	public String toString() {
		return "BoardVO [boardNo=" + boardNo + ", boardName=" + boardName + ", boardContent=" + boardContent
				+ ", userId=" + userId + ", boardDate=" + boardDate + ", updateDate=" + updateDate + "]";
	}
	

}
