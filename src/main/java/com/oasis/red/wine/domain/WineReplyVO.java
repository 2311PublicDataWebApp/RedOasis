package com.oasis.red.wine.domain;

import java.sql.Date;

public class WineReplyVO {
	private int		commentNo;
	private String	commentReply;
	private Date	commentDate;
	private	int		commentScore;
	private int		wineNo;
	private String	userId;
	
	public WineReplyVO() {}

	public int getCommentNo() {
		return commentNo;
	}

	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}

	public String getCommentReply() {
		return commentReply;
	}

	public void setCommentReply(String commentReply) {
		this.commentReply = commentReply;
	}

	public Date getCommentDate() {
		return commentDate;
	}

	public void setCommentDate(Date commentDate) {
		this.commentDate = commentDate;
	}

	public int getWineNo() {
		return wineNo;
	}

	public void setWineNo(int wineNo) {
		this.wineNo = wineNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	
	public int getCommentScore() {
		return commentScore;
	}

	public void setCommentScore(int commentScore) {
		this.commentScore = commentScore;
	}

	@Override
	public String toString() {
		return "WineReplyVO [commentNo=" + commentNo + ", commentReply=" + commentReply + ", commentDate=" + commentDate
				+ ", commentScore=" + commentScore + ", wineNo=" + wineNo + ", userId=" + userId + "]";
	}

	
}
