package com.kh.review.model.vo;

public class Review {
	
<<<<<<< HEAD
	private String name;
    private String brand;
    private String price;
    
    public Review() {}

	public Review(String name, String brand, String price) {
		super();
		this.name = name;
		this.brand = brand;
		this.price = price;
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
=======
	private int reNo;
	private String productName;
	private String email;
	private String reContent;
	private int reMark;
	
	public Review() {}

	public Review(int reNo, String productName, String email, String reContent, int reMark) {
		super();
		this.reNo = reNo;
		this.productName = productName;
		this.email = email;
		this.reContent = reContent;
		this.reMark = reMark;
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
>>>>>>> 841d0b2115b41e1169430f61f714138bd51327e9
	}

	@Override
	public String toString() {
<<<<<<< HEAD
		return "Review [name=" + name + ", brand=" + brand + ", price=" + price + "]";
	}
    
    
    
    
=======
		return "Review [reNo=" + reNo + ", productName=" + productName + ", email=" + email + ", reContent=" + reContent
				+ ", reMark=" + reMark + "]";
	}
	
	

	
	
	
>>>>>>> 841d0b2115b41e1169430f61f714138bd51327e9

}
