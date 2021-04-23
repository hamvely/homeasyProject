package com.kh.homeVisit.model.vo;

public class HomeVisit {

	private String userFileRename;
	private String nickName;
	private String postFileRename;
	private String postContent;
	private String pcomContent;
	
	public HomeVisit() {}

	public HomeVisit(String userFileRename, String nickName, String postFileRename, String postContent,
			String pcomContent) {
		super();
		this.userFileRename = userFileRename;
		this.nickName = nickName;
		this.postFileRename = postFileRename;
		this.postContent = postContent;
		this.pcomContent = pcomContent;
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
				+ postFileRename + ", postContent=" + postContent + ", pcomContent=" + pcomContent + "]";
	}
	
	

}