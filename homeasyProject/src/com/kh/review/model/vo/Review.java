package com.kh.review.model.vo;

public class Review {
	
	private int reNo;
	private int productNo;
	private int userNo;
	private String reContent;
	private int reMark;
	
	public Review() {}

	public Review(int reNo, int productNo, int userNo, String reContent, int reMark) {
		super();
		this.reNo = reNo;
		this.productNo = productNo;
		this.userNo = userNo;
		this.reContent = reContent;
		this.reMark = reMark;
	}
	
	
	
	public int getReNo() {
		return reNo;
	}

	public void setReNo(int reNo) {
		this.reNo = reNo;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getReContent() {
		return reContent;
	}

	public void setReContent(String reContent) {
		this.reContent = reContent;
	}

	public int getReMark() {
		return reMark;
	}

	public void setReMark(int reMark) {
		this.reMark = reMark;
	}

	@Override
	public String toString() {
		return "Review [reNo=" + reNo + ", productNo=" + productNo + ", userNo=" + userNo + ", reContent=" + reContent
				+ ", reMark=" + reMark + "]";
	}
	
	

}
