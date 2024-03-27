package com.oasis.red.board.domain;

public class BoardImgVO {
	private int imgNo;
	private String imgFilename;
	private String imgFileRename;
	private String imgFilepath;
	private long imgFilelength;
	private int boardNo;
	
	public BoardImgVO() {}

	
	
	public BoardImgVO(int imgNo, String imgFilename, String imgFileRename, String imgFilepath, long imgFilelength,
			int boardNo) {
		super();
		this.imgNo = imgNo;
		this.imgFilename = imgFilename;
		this.imgFileRename = imgFileRename;
		this.imgFilepath = imgFilepath;
		this.imgFilelength = imgFilelength;
		this.boardNo = boardNo;
	}



	public int getImgNo() {
		return imgNo;
	}

	public void setImgNo(int imgNo) {
		this.imgNo = imgNo;
	}

	public String getImgFilename() {
		return imgFilename;
	}

	public void setImgFilename(String imgFilename) {
		this.imgFilename = imgFilename;
	}

	public String getImgFileRename() {
		return imgFileRename;
	}

	public void setImgFileRename(String imgFileRename) {
		this.imgFileRename = imgFileRename;
	}

	public String getImgFilepath() {
		return imgFilepath;
	}

	public void setImgFilepath(String imgFilepath) {
		this.imgFilepath = imgFilepath;
	}

	public long getImgFilelength() {
		return imgFilelength;
	}

	public void setImgFilelength(long imgFilelength) {
		this.imgFilelength = imgFilelength;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	@Override
	public String toString() {
		return "BoardImgVO [imgNo=" + imgNo + ", imgFilename=" + imgFilename + ", imgFileRename=" + imgFileRename
				+ ", imgFilepath=" + imgFilepath + ", imgFilelength=" + imgFilelength + ", boardNo=" + boardNo + "]";
	}
	
	
}
