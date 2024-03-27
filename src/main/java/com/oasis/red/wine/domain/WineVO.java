package com.oasis.red.wine.domain;

public class WineVO {
	private	int		wineNo;
	private	String	wineName;
	private	String	wineRegion;
	private	String	wineRank;
	private	int		wineAging;
	private	int		wineABV;
	private	int		wineTemp;
	private	int		winePrice;
	private	int		wineScore;
	private	String	wineCategory;
	private	String	imgFileName;
	private	String	imgFileRename;
	private	String	imgFilePath;
	private	long	imgFileLength;
	private	String	wineMonth;
	private	String	wineAcidity;
	
	public WineVO() {}
	
	public int getWineNo() {
		return wineNo;
	}
	public void setWineNo(int wineNo) {
		this.wineNo = wineNo;
	}
	public String getWineName() {
		return wineName;
	}
	public void setWineName(String wineName) {
		this.wineName = wineName;
	}
	public String getWineRegion() {
		return wineRegion;
	}
	public void setWineRegion(String wineRegion) {
		this.wineRegion = wineRegion;
	}
	public String getWineRank() {
		return wineRank;
	}
	public void setWineRank(String wineRank) {
		this.wineRank = wineRank;
	}
	public int getWineAging() {
		return wineAging;
	}
	public void setWineAging(int wineAging) {
		this.wineAging = wineAging;
	}
	public int getWineABV() {
		return wineABV;
	}
	public void setWineABV(int wineABV) {
		this.wineABV = wineABV;
	}
	public int getWineTemp() {
		return wineTemp;
	}
	public void setWineTemp(int wineTemp) {
		this.wineTemp = wineTemp;
	}
	public int getWinePrice() {
		return winePrice;
	}
	public void setWinePrice(int winePrice) {
		this.winePrice = winePrice;
	}
	public int getWineScore() {
		return wineScore;
	}
	public void setWineScore(int wineScore) {
		this.wineScore = wineScore;
	}
	public String getWineCategory() {
		return wineCategory;
	}
	public void setWineCategory(String wineCategory) {
		this.wineCategory = wineCategory;
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
	public String getWineMonth() {
		return wineMonth;
	}
	public void setWineMonth(String wineMonth) {
		this.wineMonth = wineMonth;
	}
	public String getWineAcidity() {
		return wineAcidity;
	}
	public void setWineAcidity(String wineAcidity) {
		this.wineAcidity = wineAcidity;
	}
	
	@Override
	public String toString() {
		return "WineVO [wineNo=" + wineNo + ", wineName=" + wineName + ", wineRegion=" + wineRegion + ", wineRank="
				+ wineRank + ", wineAging=" + wineAging + ", wineABV=" + wineABV + ", wineTemp=" + wineTemp
				+ ", winePrice=" + winePrice + ", wineScore=" + wineScore + ", wineCategory=" + wineCategory
				+ ", imgFileName=" + imgFileName + ", imgFileRename=" + imgFileRename + ", imgFilePath=" + imgFilePath
				+ ", imgFileLength=" + imgFileLength + ", wineMonth=" + wineMonth + ", wineAcidity=" + wineAcidity
				+ "]";
	}
}
