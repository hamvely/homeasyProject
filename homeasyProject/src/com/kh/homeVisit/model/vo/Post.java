package com.kh.homeVisit.model.vo;

import java.sql.Date;

public class Post {

	 private String postNo;
	 private String postCateName;
	 private String userNo;
	 private String postTitle;
	 private String postContent;
	 private Date postCreateDate;
	
	 public Post() {}

	public Post(String postNo, String postCateName, String postTitle, String postContent, String userNo,
			Date postCreateDate) {
		super();
		this.postNo = postNo;
		this.postCateName = postCateName;
		this.postTitle = postTitle;
		this.postContent = postContent;
		this.userNo = userNo;
		this.postCreateDate = postCreateDate;
	}

	public Post(String postTitle, String postContent, String userNo, Date postCreateDate) {
		super();
		this.postTitle = postTitle;
		this.postContent = postContent;
		this.userNo = userNo;
	}

	public String getPostNo() {
		return postNo;
	}

	public void setPostNo(String postNo) {
		this.postNo = postNo;
	}

	public String getPostCateName() {
		return postCateName;
	}

	public void setPostCateName(String postCateName) {
		this.postCateName = postCateName;
	}

	public String getPostTitle() {
		return postTitle;
	}

	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}

	public String getPostContent() {
		return postContent;
	}

	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

	@Override
	public String toString() {
		return "Post [postNo=" + postNo + ", postCateName=" + postCateName + ", postTitle=" + postTitle
				+ ", postContent=" + postContent + ", userNo=" + userNo + ", postCreateDate=" + postCreateDate + "]";
	}

	
}
