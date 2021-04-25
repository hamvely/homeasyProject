package com.kh.product.model.vo;

public class ProductOption {
	
	private int optionNo;
	private int productNo;
	private String optionName;
	private int optionPrice;
	private int optionStock;
	
	public ProductOption() {}

	public ProductOption(int optionNo, int productNo, String optionName, int optionPrice, int optionStock) {
		super();
		this.optionNo = optionNo;
		this.productNo = productNo;
		this.optionName = optionName;
		this.optionPrice = optionPrice;
		this.optionStock = optionStock;
	}

	public int getOptionNo() {
		return optionNo;
	}

	public void setOptionNo(int optionNo) {
		this.optionNo = optionNo;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	public String getOptionName() {
		return optionName;
	}

	public void setOptionName(String optionName) {
		this.optionName = optionName;
	}

	public int getOptionPrice() {
		return optionPrice;
	}

	public void setOptionPrice(int optionPrice) {
		this.optionPrice = optionPrice;
	}

	public int getOptionStock() {
		return optionStock;
	}

	public void setOptionStock(int optionStock) {
		this.optionStock = optionStock;
	}

	@Override
	public String toString() {
		return "ProductOption [optionNo=" + optionNo + ", productNo=" + productNo + ", optionName=" + optionName
				+ ", optionPrice=" + optionPrice + ", optionStock=" + optionStock + "]";
	}
	
	
}

