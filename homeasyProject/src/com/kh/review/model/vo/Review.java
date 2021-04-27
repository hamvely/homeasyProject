package com.kh.review.model.vo;

public class Review {
	
	// 작성자: 홍희나
	private String name;
    private String brand;
    private String price;
    
    // 작성자: 임지우
    private int reNo;
	private String productName;
	private String email;
	private String reContent;
	private int reMark;
    
    public Review() {}

    // 작성자: 홍희나
	public Review(String name, String brand, String price) {
		super();
		this.name = name;
		this.brand = brand;
		this.price = price;
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

	@Override
	public String toString() {
		return "Review [name=" + name + ", brand=" + brand + ", price=" + price + ", reNo=" + reNo + ", productName="
				+ productName + ", email=" + email + ", reContent=" + reContent + ", reMark=" + reMark + "]";
	}
	
	

	
}
