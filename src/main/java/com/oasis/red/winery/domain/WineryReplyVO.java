package com.oasis.red.winery.domain;

import java.sql.Date;

public class WineryReplyVO {
	private int		replyNo;
	private String	replyComment;
	private Date	replyDate;
	private int		wineryNo;
	private String	userId;
	
	public WineryReplyVO() {}
	
	public int getReplyNo() {
		return replyNo;
	}
	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}
	public String getReplyComment() {
		return replyComment;
	}
	public void setReplyComment(String replyComment) {
		this.replyComment = replyComment;
	}
	public Date getReplyDate() {
		return replyDate;
	}
	public void setReplyDate(Date replyDate) {
		this.replyDate = replyDate;
	}
	public int getWineryNo() {
		return wineryNo;
	}
	public void setWineryNo(int wineryNo) {
		this.wineryNo = wineryNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "WineryReplyVO [replyNo=" + replyNo + ", replyComment=" + replyComment + ", replyDate=" + replyDate
				+ ", wineryNo=" + wineryNo + ", userId=" + userId + "]";
	}
}
