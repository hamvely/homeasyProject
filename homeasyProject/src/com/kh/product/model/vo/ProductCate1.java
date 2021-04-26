package com.kh.product.model.vo;

public class ProductCate1 {

	private int cate1No;
	private String cate1Name;
	
	public ProductCate1() {}

	public ProductCate1(int cate1No, String cate1Name) {
		super();
		this.cate1No = cate1No;
		this.cate1Name = cate1Name;
	}

	public int getCate1No() {
		return cate1No;
	}

	public void setCate1No(int cate1No) {
		this.cate1No = cate1No;
	}

	public String getCate1Name() {
		return cate1Name;
	}

	public void setCate1Name(String cate1Name) {
		this.cate1Name = cate1Name;
	}

	@Override
	public String toString() {
		return "ProductCate1 [cate1No=" + cate1No + ", cate1Name=" + cate1Name + "]";
	}
	
}
