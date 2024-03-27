package com.oasis.red.winery.domain;

public class WineryVO {
	private int		wineryNo;
	private String	wineryName;
	private String	wineryAddress;
	private String	wineryPhone;
	private String	madeWine;
	private String	wineryWebAddress;
	private String	imgFileName;
	private String	imgFileRename;
	private String	imgFilePath;
	private long	imgFileLength;
	private String	wineryDescription;
	
	public WineryVO() {}

	public int getWineryNo() {
		return wineryNo;
	}

	public void setWineryNo(int wineryNo) {
		this.wineryNo = wineryNo;
	}

	public String getWineryName() {
		return wineryName;
	}

	public void setWineryName(String wineryName) {
		this.wineryName = wineryName;
	}

	public String getWineryAddress() {
		return wineryAddress;
	}

	public void setWineryAddress(String wineryAddress) {
		this.wineryAddress = wineryAddress;
	}

	public String getWineryPhone() {
		return wineryPhone;
	}

	public void setWineryPhone(String wineryPhone) {
		this.wineryPhone = wineryPhone;
	}

	public String getMadeWine() {
		return madeWine;
	}

	public void setMadeWine(String madeWine) {
		this.madeWine = madeWine;
	}

	public String getWineryWebAddress() {
		return wineryWebAddress;
	}

	public void setWineryWebAddress(String wineryWebAddress) {
		this.wineryWebAddress = wineryWebAddress;
	}

	public String getImgFileName() {
		return imgFileName;
	}

	public void setImgFileName(String imgFileName) {
		this.imgFileName = imgFileName;
	}

	public String getImgFileRename() {
		return imgFileRename;
	}

	public void setImgFileRename(String imgFileRename) {
		this.imgFileRename = imgFileRename;
	}

	public String getImgFilePath() {
		return imgFilePath;
	}

	public void setImgFilePath(String imgFilePath) {
		this.imgFilePath = imgFilePath;
	}

	public long getImgFileLength() {
		return imgFileLength;
	}

	public void setImgFileLength(long imgFileLength) {
		this.imgFileLength = imgFileLength;
	}
	
	public String getWineryDescription() {
		return wineryDescription;
	}

	public void setWineryDescription(String wineryDescription) {
		this.wineryDescription = wineryDescription;
	}

	@Override
	public String toString() {
		return "WineryVO [wineryNo=" + wineryNo + ", wineryName=" + wineryName + ", wineryAddress=" + wineryAddress
				+ ", wineryPhone=" + wineryPhone + ", madeWine=" + madeWine + ", wineryWebAddress=" + wineryWebAddress
				+ ", imgFileName=" + imgFileName + ", imgFileRename=" + imgFileRename + ", imgFilePath=" + imgFilePath
				+ ", imgFileLength=" + imgFileLength + ", wineryDescription=" + wineryDescription + "]";
	}

	
	
}
