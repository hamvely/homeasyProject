package com.kh.notice.model.vo;

import java.sql.Date;

public class Notice {
	
	private int noticeNo;
	private String noticeTitle;
	private String noticeContent;
	private int count;
	private Date createDate;
	private String status;
	
	public Notice() {}

	public Notice(int noticeNo, String noticeTitle, String noticeContent, int count, Date createDate, String status) {
		super();
		this.noticeNo = noticeNo;
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
		this.count = count;
		this.createDate = createDate;
		this.status = status;
	}
	
	/* 공지사항 리스트조회(사용자)*/
	public Notice(String noticeTitle, Date createDate) {
		super();
		this.noticeTitle = noticeTitle;
		this.createDate = createDate;
	}
	
	/* 공지사항 리스트조회(관리자)*/
	public Notice(int noticeNo, String noticeTitle, int count, Date createDate, String status) {
		super();
		this.noticeNo = noticeNo;
		this.noticeTitle = noticeTitle;
		this.count = count;
		this.createDate = createDate;
		this.status = status;
	}

	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Notice [noticeNo=" + noticeNo + ", noticeTitle=" + noticeTitle + ", noticeContent=" + noticeContent
				+ ", count=" + count + ", createDate=" + createDate + ", status=" + status + "]";
	}

}
