package com.kh.review.model.vo;

public class Review {
	
	// 작성자: 홍희나
	private String name;
    private String brand;
    private String price;
    private String recontent;
    
    
    // 작성자: 임지우
    private int reNo;
	private String productName;
	private String email;
	private String reContent;
	private int reMark;
	private int productNo;
	private int userNo;
	
    
    public Review() {}
    
    

    public Review(int reNo, String reContent, int productNo, int userNo) {
		super();
		this.reNo = reNo;
		this.reContent = reContent;
		this.productNo = productNo;
		this.userNo = userNo;
	}



	// 작성자: 홍희나
	public Review(String name, String brand, String price) {
		super();
		this.name = name;
		this.brand = brand;
		this.price = price;
	}
	
	
	
	
	
	public Review(int reNo, int productNo, int userNo, String recontent) {
		super();
		this.reNo = reNo;
		this.productNo = productNo;
		this.userNo = userNo;
		this.recontent = recontent;
	}



	// 작성자: 임지우
	public Review(int reNo, String productName, String email, String reContent, int reMark) {
		super();
		this.reNo = reNo;
		this.productName = productName;
		this.email = email;
		this.reContent = reContent;
		this.reMark = reMark;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getBrand() {
		return brand;
	}



	public void setBrand(String brand) {
		this.brand = brand;
	}



	public String getPrice() {
		return price;
	}



	public void setPrice(String price) {
		this.price = price;
	}



	public String getRecontent() {
		return recontent;
	}



	public void setRecontent(String recontent) {
		this.recontent = recontent;
	}



	public int getReNo() {
		return reNo;
	}



	public void setReNo(int reNo) {
		this.reNo = reNo;
	}



	public String getProductName() {
		return productName;
	}



	public void setProductName(String productName) {
		this.productName = productName;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getReContent() {
		return reContent;
	}



	public void setReContent(String reContent) {
		this.reContent = reContent;
	}



	public int getReMark() {
		return reMark;
	}



	public void setReMark(int reMark) {
		this.reMark = reMark;
	}



	public int getProductNo() {
		return productNo;
	}



	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}



	public int getUserNo() {
		return userNo;
	}



	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}



	@Override
	public String toString() {
		return "Review [name=" + name + ", brand=" + brand + ", price=" + price + ", recontent=" + recontent + ", reNo="
				+ reNo + ", productName=" + productName + ", email=" + email + ", reContent=" + reContent + ", reMark="
				+ reMark + ", productNo=" + productNo + ", userNo=" + userNo + "]";
	}
	
	

	
	

	
}
