package com.kh.homeVisit.model.vo;

import java.sql.Date;

public class HomeVisit {

	private String userFileRename;
	private String nickName;
	private String postFileRename;
	private String postContent;
	private String pcomContent;
	private int postNo;
	private String rowNum;
	private String email;
	private String postTitle;
	private Date postCreateDate;
	private int postCount;
	private String userNo;
	private String postCateName;
	private String postStatus;
	
	public HomeVisit() {}

	public HomeVisit(int postNo, String userFileRename, String nickName, String postFileRename, String postContent,
			String pcomContent) {
		super();
		this.postNo = postNo;
		this.userFileRename = userFileRename;
		this.nickName = nickName;
		this.postFileRename = postFileRename;
		this.postContent = postContent;
		this.pcomContent = pcomContent;
	}

	public HomeVisit(String userFileRename, String nickName, String postFileRename, String postContent,
			String pcomContent, int postNo) {
		super();
		this.userFileRename = userFileRename;
		this.nickName = nickName;
		this.postFileRename = postFileRename;
		this.postContent = postContent;
		this.pcomContent = pcomContent;
		this.postNo = postNo;
	}

	public HomeVisit(String postContent, int postNo, String postTitle, Date postCreateDate, String userNo,
			String postCateName) {
		super();
		this.postContent = postContent;
		this.postNo = postNo;
		this.postTitle = postTitle;
		this.postCreateDate = postCreateDate;
		this.userNo = userNo;
		this.postCateName = postCateName;
	}
	
	
	public HomeVisit(String rowNum, String email, String postTitle, Date postCreateDate, int postCount) {
		super();
		this.rowNum = rowNum;
		this.email = email;
		this.postTitle = postTitle;
		this.postCreateDate = postCreateDate;
		this.postCount = postCount;
	}
	

	
	public HomeVisit(String postContent, int postNo, String postTitle, String userNo) {
		super();
		this.postContent = postContent;
		this.postNo = postNo;
		this.postTitle = postTitle;
		this.userNo = userNo;
	}

	
	
	public String getPostStatus() {
		return postStatus;
	}

	public void setPostStatus(String postStatus) {
		this.postStatus = postStatus;
	}

	public String getRowNum() {
		return rowNum;
	}

	public void setRowNum(String rowNum) {
		this.rowNum = rowNum;
	}

	public String getPostCateName() {
		return postCateName;
	}

	public void setPostCateName(String postCateName) {
		this.postCateName = postCateName;
	}

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

	public int getPostNo() {
		return postNo;
	}

	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPostTitle() {
		return postTitle;
	}

	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}

	public Date getPostCreateDate() {
		return postCreateDate;
	}

	public void setPostCreateDate(Date postCreateDate) {
		this.postCreateDate = postCreateDate;
	}

	public int getPostCount() {
		return postCount;
	}

	public void setPostCount(int postCount) {
		this.postCount = postCount;
	}

	public String getUserFileRename() {
		return userFileRename;
	}

	public void setUserFileRename(String userFileRename) {
		this.userFileRename = userFileRename;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getPostFileRename() {
		return postFileRename;
	}

	public void setPostFileRename(String postFileRename) {
		this.postFileRename = postFileRename;
	}

	public String getPostContent() {
		return postContent;
	}

	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}

	public String getPcomContent() {
		return pcomContent;
	}

	public void setPcomContent(String pcomContent) {
		this.pcomContent = pcomContent;
	}

	@Override
	public String toString() {
		return "HomeVisit [userFileRename=" + userFileRename + ", nickName=" + nickName + ", postFileRename="
				+ postFileRename + ", postContent=" + postContent + ", pcomContent=" + pcomContent + ", postNo="
				+ postNo + ", rowNum=" + rowNum + ", email=" + email + ", postTitle=" + postTitle + ", postCreateDate="
				+ postCreateDate + ", postCount=" + postCount + ", userNo=" + userNo + ", postCateName=" + postCateName
				+ "]";
	}

	
	
	

}