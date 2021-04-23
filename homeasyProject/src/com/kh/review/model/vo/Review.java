package com.kh.review.model.vo;

public class Review {
	
	private int reNo;
	private String productName;
	private String email;
	private String reContent;
	private int reMark;
	
	public Review() {}

	public Review(int reNo, String productName, String email, String reContent, int reMark) {
		super();
		this.reNo = reNo;
		this.productName = productName;
		this.email = email;
		this.reContent = reContent;
		this.reMark = reMark;
	}

	public int getReNo() {
		return reNo;
	}

	public void setReNo(int reNo) {
		this.reNo = reNo;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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
		return "Review [reNo=" + reNo + ", productName=" + productName + ", email=" + email + ", reContent=" + reContent
				+ ", reMark=" + reMark + "]";
	}
	
	

	
	
	

}
