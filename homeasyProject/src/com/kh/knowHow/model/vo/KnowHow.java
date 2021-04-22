package com.kh.knowHow.model.vo;

import java.sql.Date;

public class KnowHow {

	private int postNo; 
	private String userNo; //작성하기시 로그인한 사용자의 회원번호 ("1")/ 조회시 작성아이디(admin)
	private String postCateName; 
	private String postTitle; 
	private String postContent;
	private Date postCreateDate;
	private Date postUpdateDate; 
	private int postCount;
	private String postStatus;
	private String postFileRename;
	
	public KnowHow() {}

	public KnowHow(int postNo, String userNo, String postCateName, String postTitle, String postContent,
			Date postCreateDate, Date postUpdateDate, int postCount, String postStatus) {
		super();
		this.postNo = postNo;
		this.userNo = userNo;
		this.postCateName = postCateName;
		this.postTitle = postTitle;
		this.postContent = postContent;
		this.postCreateDate = postCreateDate;
		this.postUpdateDate = postUpdateDate;
		this.postCount = postCount;
		this.postStatus = postStatus;
	}

	

	public KnowHow(String postTitle, String postContent, String postFileRename) {
		super();
		this.postTitle = postTitle;
		this.postContent = postContent;
		this.postFileRename = postFileRename;
	}

	public int getPostNo() {
		return postNo;
	}

	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
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

	public Date getPostCreateDate() {
		return postCreateDate;
	}

	public void setPostCreateDate(Date postCreateDate) {
		this.postCreateDate = postCreateDate;
	}

	public Date getPostUpdateDate() {
		return postUpdateDate;
	}

	public void setPostUpdateDate(Date postUpdateDate) {
		this.postUpdateDate = postUpdateDate;
	}

	public int getPostCount() {
		return postCount;
	}

	public void setPostCount(int postCount) {
		this.postCount = postCount;
	}

	public String getPostStatus() {
		return postStatus;
	}

	public void setPostStatus(String postStatus) {
		this.postStatus = postStatus;
	}

	public String getPostFileRename() {
		return postFileRename;
	}

	public void setPostFileRename(String postFileRename) {
		this.postFileRename = postFileRename;
	}

	@Override
	public String toString() {
		return "KnowHow [postNo=" + postNo + ", userNo=" + userNo + ", postCateName=" + postCateName + ", postTitle="
				+ postTitle + ", postContent=" + postContent + ", postCreateDate=" + postCreateDate
				+ ", postUpdateDate=" + postUpdateDate + ", postCount=" + postCount + ", postStatus=" + postStatus
				+ "]";
	}
	
	
	
}
