package com.oasis.red.education.domain;

import java.sql.Date;

public class EducationVO {
	private int educationNo;
	private String educationName;
	private String educationLocation;
	private Date educationDate;
	private String educationLink;
	private String educationContent;
	private String educationTeacher;
	private String imgFileName;
	private String imgFileRename;
	private String imgFilePath;
	private long imgFileLength;
	
	
	public EducationVO() {}


	public int getEducationNo() {
		return educationNo;
	}


	public void setEducationNo(int educationNo) {
		this.educationNo = educationNo;
	}


	public String getEducationName() {
		return educationName;
	}


	public void setEducationName(String educationName) {
		this.educationName = educationName;
	}


	public String getEducationLocation() {
		return educationLocation;
	}


	public void setEducationLocation(String educationLocation) {
		this.educationLocation = educationLocation;
	}


	public Date getEducationDate() {
		return educationDate;
	}


	public void setEducationDate(Date educationDate) {
		this.educationDate = educationDate;
	}


	public String getEducationLink() {
		return educationLink;
	}


	public void setEducationLink(String educationLink) {
		this.educationLink = educationLink;
	}


	public String getEducationContent() {
		return educationContent;
	}


	public void setEducationContent(String educationContent) {
		this.educationContent = educationContent;
	}


	public String getEducationTeacher() {
		return educationTeacher;
	}


	public void setEducationTeacher(String educationTeacher) {
		this.educationTeacher = educationTeacher;
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
		return "EducationVO [educationNo=" + educationNo + ", educationName=" + educationName + ", educationLocation="
				+ educationLocation + ", educationDate=" + educationDate + ", educationLink=" + educationLink
				+ ", educationContent=" + educationContent + ", educationTeacher=" + educationTeacher + ", imgFileName="
				+ imgFileName + ", imgFileRename=" + imgFileRename + ", imgFilePath=" + imgFilePath + ", imgFileLength="
				+ imgFileLength + "]";
	}


	
	
	

}
