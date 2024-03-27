package com.oasis.red.tasting.domain;

import java.sql.Date;

public class TastingVO {
	private int tastingNo;
	private String tastingName;
	private String tastingLocation;
	private Date tastingDate;
	private String tastingWriter;
	private String tastingContent;
	private String imgFileName;
	private String imgFileRename;
	private String imgFilePath;
	private long imgFileLength;
	
	
	public TastingVO() {}


	public int getTastingNo() {
		return tastingNo;
	}


	public void setTastingNo(int tastingNo) {
		this.tastingNo = tastingNo;
	}


	public String getTastingName() {
		return tastingName;
	}


	public void setTastingName(String tastingName) {
		this.tastingName = tastingName;
	}


	public String getTastingLocation() {
		return tastingLocation;
	}


	public void setTastingLocation(String tastingLocation) {
		this.tastingLocation = tastingLocation;
	}


	public Date getTastingDate() {
		return tastingDate;
	}


	public void setTastingDate(Date tastingDate) {
		this.tastingDate = tastingDate;
	}


	public String getTastingWriter() {
		return tastingWriter;
	}


	public void setTastingWriter(String tastingWriter) {
		this.tastingWriter = tastingWriter;
	}


	public String getTastingContent() {
		return tastingContent;
	}


	public void setTastingContent(String tastingContent) {
		this.tastingContent = tastingContent;
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
		return "TastingVO [tastingNo=" + tastingNo + ", tastingName=" + tastingName + ", tastingLocation="
				+ tastingLocation + ", tastingDate=" + tastingDate + ", tastingWriter=" + tastingWriter
				+ ", tastingContent=" + tastingContent + ", imgFileName=" + imgFileName + ", imgFileRename="
				+ imgFileRename + ", imgFilePath=" + imgFilePath + ", imgFileLength=" + imgFileLength + "]";
	}
	


	
	
	

}
