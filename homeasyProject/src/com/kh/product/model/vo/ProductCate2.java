package com.kh.product.model.vo;

public class ProductCate2 {

	private int cate2No;
	private int cate1No;
	private String cate2Name;
	
	public ProductCate2() {}

	public ProductCate2(int cate2No, int cate1No, String cate2Name) {
		super();
		this.cate2No = cate2No;
		this.cate1No = cate1No;
		this.cate2Name = cate2Name;
	}

	public int getCate2No() {
		return cate2No;
	}

	public void setCate2No(int cate2No) {
		this.cate2No = cate2No;
	}

	public int getCate1No() {
		return cate1No;
	}

	public void setCate1No(int cate1No) {
		this.cate1No = cate1No;
	}

	public String getCate2Name() {
		return cate2Name;
	}

	public void setCate2Name(String cate2Name) {
		this.cate2Name = cate2Name;
	}

	@Override
	public String toString() {
		return "ProductCate2 [cate2No=" + cate2No + ", cate1No=" + cate1No + ", cate2Name=" + cate2Name + "]";
	}
	
}