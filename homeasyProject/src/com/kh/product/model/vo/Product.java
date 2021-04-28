package com.kh.product.model.vo;

import java.sql.Date;

public class Product {

   private int productNo;         	// 상품 고유번호
   private int cate2No;         	// 2차 카테고리 고유번호
   private String productName;      // 상품명
   private String productBrand;   	// 상품 업체명
   private int productPrice;      	// 상품 가격
   private String productDetail;   	// 상품 상세내용
   private Date productDate;      	// 상품 등록 날짜
   private String productStatus;	// 상품 등록 상태 (Y:등록 / N:미등록)
   
   private String titleImg;			// 해당 게시글의 대표이미지경로
   
   private String cate1Name;      // 1차 카테고리명
   private String cate2Name;      // 2차 카테고리명
   
   private String optionName;	// 옵션명
   private int optionPrice;		// 옵션가격
   private int optionStock;		// 옵션재고
   
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
   
   public Product(int productNo, String productBrand, String productName, int productPrice,
         String productDetail, Date productDate) {
      super();
      this.productNo = productNo;
      this.productBrand = productBrand;
      this.productName = productName;
      this.productPrice = productPrice;
      this.productDetail = productDetail;
      this.productDate = productDate;
   }
   
   
   // 관리자 상품관리 리스트 조회
   public Product(int productNo, String cate1Name, String cate2Name, String productName, String productBrand, int productPrice, Date productDate,
         String productStatus) {
      super();
      this.productNo = productNo;
      this.cate1Name = cate1Name;
      this.cate2Name = cate2Name;
      this.productName = productName;
      this.productBrand = productBrand;
      this.productPrice = productPrice;
      this.productDate = productDate;
      this.productStatus = productStatus;
   }   
   
   // 관리자 재고관리 리스트 조회
   public Product(int productNo, String cate2Name, String productBrand, String productName, int productPrice,
         String optionName, int optionPrice, int optionStock) {
      super();
      this.productNo = productNo;
      this.cate2Name = cate2Name;
      this.productBrand = productBrand;
      this.productName = productName;
      this.productPrice = productPrice;
      this.optionName = optionName;
      this.optionPrice = optionPrice;
      this.optionStock = optionStock;
   }

   public Product(int productPrice, int optionPrice) {
	   super();
	   this.productPrice = productPrice;
	   this.optionPrice = optionPrice;
   }
   public String getTitleImg() {
      return titleImg;
   }

   public void setTitleImg(String titleImg) {
      this.titleImg = titleImg;
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
      return "Product [productNo=" + productNo + ", cate2No=" + cate2No + ", productName=" + productName
            + ", productBrand=" + productBrand + ", productPrice=" + productPrice + ", productDetail="
            + productDetail + ", productDate=" + productDate + ", productStatus=" + productStatus + "]";
   }


   
}