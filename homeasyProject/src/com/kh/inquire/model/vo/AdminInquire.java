package com.kh.inquire.model.vo;

import java.sql.Date;

public class AdminInquire {
		
	 private int inqNo;
	 private String inqCate;
	 private String inqTitle;
	 private String inqContent;
	 private Date inqCreateDate;
	 private String inqAnswer;
	 private String email;
	 
	 public AdminInquire() {}


	public AdminInquire(int inqNo, String inqCate, String inqTitle, String inqContent, Date inqCreateDate,
			String inqAnswer, String email) {
		super();
		this.inqNo = inqNo;
		this.inqCate = inqCate;
		this.inqTitle = inqTitle;
		this.inqContent = inqContent;
		this.inqCreateDate = inqCreateDate;
		this.inqAnswer = inqAnswer;
		this.email = email;
	}


	public int getInqNo() {
		return inqNo;
	}

	public void setInqNo(int inqNo) {
		this.inqNo = inqNo;
	}

	public String getInqCate() {
		return inqCate;
	}

	public void setInqCate(String inqCate) {
		this.inqCate = inqCate;
	}

	public String getInqTitle() {
		return inqTitle;
	}

	public void setInqTitle(String inqTitle) {
		this.inqTitle = inqTitle;
	}

	public String getInqContent() {
		return inqContent;
	}

	public void setInqContent(String inqContent) {
		this.inqContent = inqContent;
	}

	public Date getInqCreateDate() {
		return inqCreateDate;
	}

	public void setInqCreateDate(Date inqCreateDate) {
		this.inqCreateDate = inqCreateDate;
	}

	public String getInqAnswer() {
		return inqAnswer;
	}

	public void setInqAnswer(String inqAnswer) {
		this.inqAnswer = inqAnswer;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "noticeInquire [inqNo=" + inqNo + ", inqCate=" + inqCate + ", inqTitle=" + inqTitle + ", inqContent="
				+ inqContent + ", inqCreateDate=" + inqCreateDate + ", inqAnswer=" + inqAnswer + ", email=" + email
				+ "]";
	}
	 
	 


}
