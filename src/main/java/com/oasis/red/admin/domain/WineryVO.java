package com.oasis.red.admin.domain;

public class WineryVO {
	private int wineryNo;
	private String 	wineryName;
	private String 	wineryAddress;
	private String 	wineryPhone;
	private String 	madeWine;
	private String 	wineryWebAddress;
	private String 	imgFilename;
	private String 	imgFileRename;
	private String 	imgFilepath;
	private long	imgFilelength;
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

	public String getImgFilename() {
		return imgFilename;
	}

	public void setImgFilename(String imgFilename) {
		this.imgFilename = imgFilename;
	}

	public String getImgFileRename() {
		return imgFileRename;
	}

	public void setImgFileRename(String imgFilerename) {
		this.imgFileRename = imgFilerename;
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
				+ ", imgFilename=" + imgFilename + ", imgFileRename=" + imgFileRename + ", imgFilepath=" + imgFilepath
				+ ", imgFilelength=" + imgFilelength + ", wineryDescription=" + wineryDescription + "]";

	}
}
