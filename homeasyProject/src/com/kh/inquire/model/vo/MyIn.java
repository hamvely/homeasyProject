package com.kh.inquire.model.vo;

import java.sql.Date;

public class MyIn {
	
	
	 private String inqCate;
	 private String inqTitle;
	 private String inqContent;
	 private Date inqCreateDate;
	 
	 public MyIn() {}
	 
	public MyIn(String inqCate, String inqTitle, String inqContent, Date inqCreateDate) {
		super();
		this.inqCate = inqCate;
		this.inqTitle = inqTitle;
		this.inqContent = inqContent;
		this.inqCreateDate = inqCreateDate;
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

	@Override
	public String toString() {
		return "MyIn [inqCate=" + inqCate + ", inqTitle=" + inqTitle + ", inqContent=" + inqContent + ", inqCreateDate="
				+ inqCreateDate + "]";
	}
	 
	

}
