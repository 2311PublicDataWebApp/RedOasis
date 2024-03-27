package com.oasis.red.admin.domain;

import java.sql.Date;
import java.sql.Timestamp;

public class BoardVO {
 private int boardNo;
 private String boardName;
 private String boardContent;
 private Date boardDate;
 private Timestamp updateDate;
 private String userId;

 public BoardVO() {}

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

public String getUserId() {
	return userId;
}

public void setUserId(String userId) {
	this.userId = userId;
}

@Override
public String toString() {
	return "BoardVO [boardNo=" + boardNo + ", boardName=" + boardName + ", boardContent=" + boardContent
			+ ", boardDate=" + boardDate + ", updateDate=" + updateDate + ", userId=" + userId + "]";
}

 
}
