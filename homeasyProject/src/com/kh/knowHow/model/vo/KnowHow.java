package com.kh.knowHow.model.vo;

import java.sql.Date;

public class KnowHow {

	private String postTitle; 
	private String postContent;
	private String postFileRename;
	private String name;
	private String pcomContent;
	// 작성자:임지우 - 매개변수 추가
	private int postNo;
	private Date postUpdateDate;
	private int postCount;
	private String postStatus; 
	// 작성자:장아영 - 추가
	private String nickName;
	private String userFileRename;
	
	
	public KnowHow() {}
	
	
	// 작성자:임지우 - 노하우관리 리스트조회
	public KnowHow(int postNo, String postTitle, Date postUpdateDate, int postCount, String postStatus) {
		super();
		this.postNo = postNo;
		this.postTitle = postTitle;
		this.postUpdateDate = postUpdateDate;
		this.postCount = postCount;
		this.postStatus = postStatus;
	}



	//노하우메인
	public KnowHow(int postNo, String postTitle, String postContent, String postFileRename) {
		super();
		this.postNo = postNo;
		this.postTitle = postTitle;
		this.postContent = postContent;
		this.postFileRename = postFileRename;
	}
	

	//노하우게시글상세보기
	public KnowHow(int postNo, String UserFileRename, String NickName, String postFileRename, String postContent, String pcomContent) {
		super();
		this.postNo = postNo;
		this.userFileRename = userFileRename;
		this.nickName = nickName;
		this.postFileRename = postFileRename;
		this.postContent = postContent;
		this.pcomContent = pcomContent;
	}

	
	
	public KnowHow(String postTitle, String name, String postFileRename, String postContent, String pcomContent) {
		super();
		this.postTitle = postTitle;
		this.name = name;
		this.postFileRename = postFileRename;
		this.postContent = postContent;
		this.pcomContent = pcomContent;
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


	public String getPostFileRename() {
		return postFileRename;
	}


	public void setPostFileRename(String postFileRename) {
		this.postFileRename = postFileRename;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getPcomContent() {
		return pcomContent;
	}


	public void setPcomContent(String pcomContent) {
		this.pcomContent = pcomContent;
	}


	public int getPostNo() {
		return postNo;
	}


	public void setPostNo(int postNo) {
		this.postNo = postNo;
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


	public String getNickName() {
		return nickName;
	}


	public void setNickName(String nickName) {
		this.nickName = nickName;
	}


	public String getUserFileRename() {
		return userFileRename;
	}


	public void setUserFileRename(String userFileRename) {
		this.userFileRename = userFileRename;
	}


	@Override
	public String toString() {
		return "KnowHow [postTitle=" + postTitle + ", postContent=" + postContent + ", postFileRename=" + postFileRename
				+ ", name=" + name + ", pcomContent=" + pcomContent + ", postNo=" + postNo + ", postUpdateDate="
				+ postUpdateDate + ", postCount=" + postCount + ", postStatus=" + postStatus + ", nickName=" + nickName
				+ ", userFileRename=" + userFileRename + "]";
	}
	
	
	
	
	
	
}