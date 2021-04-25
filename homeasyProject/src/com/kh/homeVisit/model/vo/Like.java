package com.kh.homeVisit.model.vo;

public class Like {

	private int postNo;
	private int userNo;
	
	public Like() {}

	public Like(int postNo, int userNo) {
		super();
		this.postNo = postNo;
		this.userNo = userNo;
	}

	public int getPostNo() {
		return postNo;
	}

	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	@Override
	public String toString() {
		return "Like [postNo=" + postNo + ", userNo=" + userNo + "]";
	}
	
	
	
}
