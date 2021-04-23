package com.kh.qna.model.vo;

public class Qna {

	private String postTitle;
	private String postContent;
	private String userFileRename;
	private String nickName;
	private String postFileRename;
	
	public Qna() {}

	//질문과답변하기메인
	public Qna(String postTitle, String postContent, String userFileRename, String nickName, String postFileRename) {
		super();
		this.postTitle = postTitle;
		this.postContent = postContent;
		this.userFileRename = userFileRename;
		this.nickName = nickName;
		this.postFileRename = postFileRename;
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

	@Override
	public String toString() {
		return "Qna [postTitle=" + postTitle + ", postContent=" + postContent + ", userFileRename=" + userFileRename
				+ ", nickName=" + nickName + ", postFileRename=" + postFileRename + "]";
	}
	
	
	
	
}
