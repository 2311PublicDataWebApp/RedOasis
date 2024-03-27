package com.oasis.red.board.domain;

import java.sql.Date;

public class CommentVO {
	private int CommentNo;
	private int boardNo;
	private String commentContent;
	private String userId;
	private Date commentDate;
	
	public CommentVO() {}

	
	
	public CommentVO(int commentNo, int boardNo, String commentContent, String userId, Date commentDate) {
		super();
		CommentNo = commentNo;
		this.boardNo = boardNo;
		this.commentContent = commentContent;
		this.userId = userId;
		this.commentDate = commentDate;
	}



	public int getCommentNo() {
		return CommentNo;
	}

	public void setCommentNo(int commentNo) {
		CommentNo = commentNo;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public Date getCommentDate() {
		return commentDate;
	}

	public void setCommentDate(Date commentDate) {
		this.commentDate = commentDate;
	}

	@Override
	public String toString() {
		return "ReplyVO [CommentNo=" + CommentNo + ", boardNo=" + boardNo + ", commentContent=" + commentContent
				+ ", userId=" + userId + ", commentDate=" + commentDate + "]";
	}
	
	
		
}
