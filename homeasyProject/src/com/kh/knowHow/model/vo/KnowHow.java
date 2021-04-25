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
	public KnowHow(String postTitle, String postContent, String postFileRename) {
		super();
		this.postTitle = postTitle;
		this.postContent = postContent;
		this.postFileRename = postFileRename;
	}
	

	//노하우게시글상세보기
	public KnowHow(String postTitle, String postContent, String postFileRename, String name, String pcomContent) {
		super();
		this.postTitle = postTitle;
		this.postContent = postContent;
		this.postFileRename = postFileRename;
		this.name = name;
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


	@Override
	public String toString() {
		return "KnowHow [postTitle=" + postTitle + ", postContent=" + postContent + ", postFileRename=" + postFileRename
				+ "]";
	}
	
	
	
	
	
	
}