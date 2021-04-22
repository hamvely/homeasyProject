package com.kh.homeVisit.model.vo;

public class Reply {

	private String nickName;
	private String pcomContent;
	
	public Reply() {}

	public Reply(String nickName, String pcomContent) {
		super();
		this.nickName = nickName;
		this.pcomContent = pcomContent;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getPcomContent() {
		return pcomContent;
	}

	public void setPcomContent(String pcomContent) {
		this.pcomContent = pcomContent;
	}

	@Override
	public String toString() {
		return "Reply [nickName=" + nickName + ", pcomContent=" + pcomContent + "]";
	}
	
	
}
