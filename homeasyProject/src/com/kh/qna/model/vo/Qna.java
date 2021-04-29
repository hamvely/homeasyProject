package com.kh.qna.model.vo;

import java.sql.Date;

public class Qna {

	private String postTitle;
	private String postContent;
	private String userFileRename;
	private String nickName;
	private String postFileRename;
	private String userNo;
	private String postCateName;
	private Date postCreateDate;
	private int postNo;
	private String email;
	private int postCount;
	//아영 추가
	private String pcomContent;
	
	public Qna() {}

	//질문과답변하기메인 
	public Qna(int postNo, String postTitle, String postContent, String userFileRename, String nickName, String postFileRename
			) {
		super();
		this.postNo = postNo;
		this.postTitle = postTitle;
		this.postContent = postContent;
		this.userFileRename = userFileRename;
		this.nickName = nickName;
		this.postFileRename = postFileRename;
	}
	
	// 게시글상세
	public Qna(String postTitle, String postContent, String userFileRename, String nickName, String postFileRename) {
		super();
		this.postTitle = postTitle;
		this.postContent = postContent;
		this.userFileRename = userFileRename;
		this.nickName = nickName;
		this.postFileRename = postFileRename;
	}
	
	
	public Qna(String postTitle, String postContent, String userFileRename, String nickName, String postFileRename,
			String userNo, String postCateName, Date postCreateDate) {
		super();
		this.postTitle = postTitle;
		this.postContent = postContent;
		this.userFileRename = userFileRename;
		this.nickName = nickName;
		this.postFileRename = postFileRename;
		this.userNo = userNo;
		this.postCateName = postCateName;
		this.postCreateDate = postCreateDate;
	}
	

	public Qna(int postNo,  String email, String postTitle, Date postCreateDate, int postCount) {
		super();
		this.postNo = postNo;
		this.email = email;
		this.postTitle = postTitle;
		this.postCreateDate = postCreateDate;
		this.postCount = postCount;
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

	public int getPostCount() {
		return postCount;
	}

	public void setPostCount(int postCount) {
		this.postCount = postCount;
	}

	public String getPostCateName() {
		return postCateName;
	}

	public void setPostCateName(String postCateName) {
		this.postCateName = postCateName;
	}

	public Date getPostCreateDate() {
		return postCreateDate;
	}

	public void setPostCreateDate(Date postCreateDate) {
		this.postCreateDate = postCreateDate;
	}

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
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

	
	public String getPcomContent() {
		return pcomContent;
	}

	public void setPcomContent(String pcomContent) {
		this.pcomContent = pcomContent;
	}

	
	@Override
	public String toString() {
		return "Qna [postTitle=" + postTitle + ", postContent=" + postContent + ", userFileRename=" + userFileRename
				+ ", nickName=" + nickName + ", postFileRename=" + postFileRename + ", userNo=" + userNo
				+ ", postCateName=" + postCateName + ", postCreateDate=" + postCreateDate + ", postNo=" + postNo
				+ ", email=" + email + ", postCount=" + postCount + ", pcomContent=" + pcomContent + "]";
	}

	
	
	
}
