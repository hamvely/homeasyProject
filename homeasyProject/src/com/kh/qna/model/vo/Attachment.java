package com.kh.qna.model.vo;

import java.io.File;

public class Attachment {

	private int postFileNo;
	private int postNo;
	private String postFileRename;
	private String originName;
	private String fileSystemName;
	private String filePath;
	private int fileLevel;
	
	public Attachment() {}

	public Attachment(int postFileNo, int postNo, String postFileRename) {
		super();
		this.postFileNo = postFileNo;
		this.postNo = postNo;
		this.postFileRename = postFileRename;
	}
	
	

	public Attachment(String originName, String fileSystemName, String filePath, int fileLevel) {
		super();
		this.originName = originName;
		this.fileSystemName = fileSystemName;
		this.filePath = filePath;
		this.fileLevel = fileLevel;
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

	public String getOriginName() {
		return originName;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
	}

	public String getFileSystemName() {
		return fileSystemName;
	}

	public void setFileSystemName(String fileSystemName) {
		this.fileSystemName = fileSystemName;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public int getFileLevel() {
		return fileLevel;
	}

	public void setFileLevel(int fileLevel) {
		this.fileLevel = fileLevel;
	}

	public String getChangeName() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String toString() {
		return "Attachment [postFileNo=" + postFileNo + ", postNo=" + postNo + ", postFileReName=" + postFileRename
				+ ", originName=" + originName + ", fileSystemName=" + fileSystemName + ", filePath=" + filePath
				+ ", fileLevel=" + fileLevel + "]";
	}


	


}
