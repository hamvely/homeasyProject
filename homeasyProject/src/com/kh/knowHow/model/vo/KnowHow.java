package com.kh.knowHow.model.vo;

import java.sql.Date;

public class KnowHow {

	private String postTitle; 
	private String postContent;
	private String postFileRename;
	private String name;
	private String pcomContent;
	
	public KnowHow() {}

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

	@Override
	public String toString() {
		return "KnowHow [postTitle=" + postTitle + ", postContent=" + postContent + ", postFileRename=" + postFileRename
				+ "]";
	}
	
	
	
	
}