package com.oasis.red.admin.domain;

public class WineryVO {
	private int wineryNo;
	private String wineryName;
	private String wineryAddress;
	private String wineryPhone;
	private String madeWine;
	private String wineryWebAddress;
	private String imgFilename;
	private String imgFilerename;
	private String imgFilepath;
	private String imgFilelength;
	
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

	public String getImgFilerename() {
		return imgFilerename;
	}

	public void setImgFilerename(String imgFilerename) {
		this.imgFilerename = imgFilerename;
	}

	public String getImgFilepath() {
		return imgFilepath;
	}

	public void setImgFilepath(String imgFilepath) {
		this.imgFilepath = imgFilepath;
	}

	public String getImgFilelength() {
		return imgFilelength;
	}

	public void setImgFilelength(String imgFilelength) {
		this.imgFilelength = imgFilelength;
	}

	@Override
	public String toString() {
		return "WineryVO [wineryNo=" + wineryNo + ", wineryName=" + wineryName + ", wineryAddress=" + wineryAddress
				+ ", wineryPhone=" + wineryPhone + ", madeWine=" + madeWine + ", wineryWebAddress=" + wineryWebAddress
				+ ", imgFilename=" + imgFilename + ", imgFilerename=" + imgFilerename + ", imgFilepath=" + imgFilepath
				+ ", imgFilelength=" + imgFilelength + "]";
	}
	
	
}
