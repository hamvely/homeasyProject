package com.kh.like.model.vo;

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
		return "like [postNo=" + postNo + ", userNo=" + userNo + "]";
	}
	
	

}


