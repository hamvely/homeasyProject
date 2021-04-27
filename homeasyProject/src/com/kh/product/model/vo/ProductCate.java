package com.kh.product.model.vo;

public class ProductCate {

	private int cate1No;
	private int cate2No;
	private String cate1Name;
	private String cate2Name;
	
	public ProductCate() {}

	public ProductCate(int cate1No, int cate2No, String cate1Name, String cate2Name) {
		super();
		this.cate1No = cate1No;
		this.cate2No = cate2No;
		this.cate1Name = cate1Name;
		this.cate2Name = cate2Name;
	}

	public int getCate1No() {
		return cate1No;
	}

	public void setCate1No(int cate1No) {
		this.cate1No = cate1No;
	}

	public int getCate2No() {
		return cate2No;
	}

	public void setCate2No(int cate2No) {
		this.cate2No = cate2No;
	}

	public String getCate1Name() {
		return cate1Name;
	}

	public void setCate1Name(String cate1Name) {
		this.cate1Name = cate1Name;
	}

	public String getCate2Name() {
		return cate2Name;
	}

	public void setCate2Name(String cate2Name) {
		this.cate2Name = cate2Name;
	}

	@Override
	public String toString() {
		return "ProductCate [cate1No=" + cate1No + ", cate2No=" + cate2No + ", cate1Name=" + cate1Name + ", cate2Name="
				+ cate2Name + "]";
	}

	
	
}
