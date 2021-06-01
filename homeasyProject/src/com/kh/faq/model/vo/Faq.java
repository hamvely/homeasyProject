package com.kh.faq.model.vo;

public class Faq {

	private int faqNo;
	private String faqCate;
	private String faqTitle;
	private String faqAnswer;
	
	public Faq() {}

	public Faq(int faqNo, String faqCate, String faqTitle, String faqAnswer) {
		super();
		this.faqNo = faqNo;
		this.faqCate = faqCate;
		this.faqTitle = faqTitle;
		this.faqAnswer = faqAnswer;
	}

	public int getFaqNo() {
		return faqNo;
	}

	public void setFaqNo(int faqNo) {
		this.faqNo = faqNo;
	}

	public String getFaqCate() {
		return faqCate;
	}

	public void setFaqCate(String faqCate) {
		this.faqCate = faqCate;
	}

	public String getFaqTitle() {
		return faqTitle;
	}

	public void setFaqTitle(String faqTitle) {
		this.faqTitle = faqTitle;
	}

	public String getFaqAnswer() {
		return faqAnswer;
	}

	public void setFaqAnswer(String faqAnswer) {
		this.faqAnswer = faqAnswer;
	}

	@Override
	public String toString() {
		return "Faq [faqNo=" + faqNo + ", faqCate=" + faqCate + ", faqTitle=" + faqTitle + ", faqAnswer=" + faqAnswer
				+ "]";
	}
	

	
}
