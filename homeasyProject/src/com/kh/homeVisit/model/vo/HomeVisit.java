package com.kh.homeVisit.model.vo;

public class HomeVisit {

	private String nickName;
	private int postFileNo;
	private int postNo;
	private int userNo;
	private String postContent;
	private String pcomContent;
	private String postStatus;
	
	public HomeVisit() {}

	public HomeVisit(String nickName, int postFileNo, int postNo, int userNo, String postContent, String pcomContent,
			String postStatus) {
		super();
		this.nickName = nickName;
		this.postFileNo = postFileNo;
		this.postNo = postNo;
		this.userNo = userNo;
		this.postContent = postContent;
		this.pcomContent = pcomContent;
		this.postStatus = postStatus;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public int getPostFileNo() {
		return postFileNo;
	}

	public void setPostFileNo(int postFileNo) {
		this.postFileNo = postFileNo;
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

	public String getPostStatus() {
		return postStatus;
	}

	public void setPostStatus(String postStatus) {
		this.postStatus = postStatus;
	}

	@Override
	public String toString() {
		return "HomeVisit [nickName=" + nickName + ", postFileNo=" + postFileNo + ", postNo=" + postNo + ", userNo="
				+ userNo + ", postContent=" + postContent + ", pcomContent=" + pcomContent + ", postStatus="
				+ postStatus + "]";
	}
	
	
	
}
