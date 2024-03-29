package com.oasis.red.today.domain;

public class TodayVO {
	private int twineNo;
	private String twineName;
	private String twineEng;
	private String twinePrice;
	private String twineContent;
	private String twineSweet;
	private String twineAlc;
	private String imgFileName;
	private String imgFileRename;
	private String imgFilePath;
	private long imgFileLength;
	
	public TodayVO () {}

	public int getTwineNo() {
		return twineNo;
	}

	public void setTwineNo(int twineNo) {
		this.twineNo = twineNo;
	}

	public String getTwineName() {
		return twineName;
	}

	public void setTwineName(String twineName) {
		this.twineName = twineName;
	}

	public String getTwineEng() {
		return twineEng;
	}

	public void setTwineEng(String twineEng) {
		this.twineEng = twineEng;
	}

	public String getTwinePrice() {
		return twinePrice;
	}

	public void setTwinePrice(String twinePrice) {
		this.twinePrice = twinePrice;
	}

	public String getTwineContent() {
		return twineContent;
	}

	public void setTwineContent(String twineContent) {
		this.twineContent = twineContent;
	}

	public String getTwineSweet() {
		return twineSweet;
	}

	public void setTwineSweet(String twineSweet) {
		this.twineSweet = twineSweet;
	}

	public String getTwineAlc() {
		return twineAlc;
	}

	public void setTwineAlc(String twineAlc) {
		this.twineAlc = twineAlc;
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

	@Override
	public String toString() {
		return "TodayVO [twineNo=" + twineNo + ", twineName=" + twineName + ", twineEng=" + twineEng + ", twinePrice="
				+ twinePrice + ", twineContent=" + twineContent + ", twineSweet=" + twineSweet + ", twineAlc="
				+ twineAlc + ", imgFileName=" + imgFileName + ", imgFileRename=" + imgFileRename + ", imgFilePath="
				+ imgFilePath + ", imgFileLength=" + imgFileLength + "]";
	}
	
	

}
