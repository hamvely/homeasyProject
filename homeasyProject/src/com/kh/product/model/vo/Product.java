package com.kh.product.model.vo;

import java.sql.Date;

public class Product {

	private int productNo;			// 상품 고유번호
	private int cate2No;			// 2차 카테고리 고유번호
	private String productName;		// 상품명
	private String productBrand;	// 상품 업체명
	private int productPrice;		// 상품 가격
	private String productDetail;	// 상품 상세내용
	private Date productDate;		// 상품 등록 날짜
	private String productStatus;	// 상품 등록 상태 (Y:등록 / N:미등록)
	
	public Product() {}

	public Product(int productNo, int cate2No, String productName, String productBrand, int productPrice,
			String productDetail, Date productDate, String productStatus) {
		super();
		this.productNo = productNo;
		this.cate2No = cate2No;
		this.productName = productName;
		this.productBrand = productBrand;
		this.productPrice = productPrice;
		this.productDetail = productDetail;
		this.productDate = productDate;
		this.productStatus = productStatus;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	public int getCate2No() {
		return cate2No;
	}

	public void setCate2No(int cate2No) {
		this.cate2No = cate2No;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductBrand() {
		return productBrand;
	}

	public void setProductBrand(String productBrand) {
		this.productBrand = productBrand;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public String getProductDetail() {
		return productDetail;
	}

	public void setProductDetail(String productDetail) {
		this.productDetail = productDetail;
	}

	public Date getProductDate() {
		return productDate;
	}

	public void setProductDate(Date productDate) {
		this.productDate = productDate;
	}

	public String getProductStatus() {
		return productStatus;
	}

	public void setProductStatus(String productStatus) {
		this.productStatus = productStatus;
	}

	@Override
	public String toString() {
		return "Product [productNo=" + productNo + ", cate2No=" + cate2No + ", productName=" + productName
				+ ", productBrand=" + productBrand + ", productPrice=" + productPrice + ", productDetail="
				+ productDetail + ", productDate=" + productDate + ", productStatus=" + productStatus + "]";
	}
	
}
