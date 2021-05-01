package com.kh.knowHow.model.vo;

public class KnowHowFile {
	
	private int postFileNo;			// 첨부파일 고유번호
	private int postNo;			// 참조하고 있는 게시글 번호
	private String postFileRename;	// 첨부파일 수정명
	
	public KnowHowFile() {}

	public KnowHowFile(int postFileNo, int postNo, String postFileRename) {
		super();
		this.postFileNo = postFileNo;
		this.postNo = postNo;
		this.postFileRename = postFileRename;
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

	public String getPostFileRename() {
		return postFileRename;
	}

	public void setPostFileRename(String postFileRename) {
		this.postFileRename = postFileRename;
	}

	@Override
	public String toString() {
		return "KnowHowFile [postFileNo=" + postFileNo + ", postNo=" + postNo + ", postFileRename=" + postFileRename
				+ "]";
	}

	
	
	
	

}
