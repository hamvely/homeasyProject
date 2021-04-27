package com.kh.order.model.vo;

import java.sql.Date;

public class Order {
	
	private int orderNo; 
	private String productName;
	private String name;
	private String address;
	private String phone;
	private String orderMemo;
	private Date buyDate;
	private String buyMethod;
	private int productNo;


	public Order(){}



	public Order(int orderNo, String productName, String name, String address, String phone, String orderMemo,
			Date buyDate, String buyMethod, int productNo) {
		super();
		this.orderNo = orderNo;
		this.productName = productName;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.orderMemo = orderMemo;
		this.buyDate = buyDate;
		this.buyMethod = buyMethod;
		this.productNo = productNo;
	}




	public Order(int orderNo, String productName) {
		super();
		this.orderNo = orderNo;
		this.productName = productName;
	}



	public Order(String name, String address, String phone, String orderMemo, Date buyDate, String buyMethod,
			int productNo ) {
		super();
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.orderMemo = orderMemo;
		this.buyDate = buyDate;
		this.buyMethod = buyMethod;
		this.productNo = productNo;
		this.productName = productName;
	}



	public int getOrderNo() {
		return orderNo;
	}



	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}



	public String getProductName() {
		return productName;
	}



	public void setProductName(String productName) {
		this.productName = productName;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	public String getOrderMemo() {
		return orderMemo;
	}



	public void setOrderMemo(String orderMemo) {
		this.orderMemo = orderMemo;
	}



	public Date getBuyDate() {
		return buyDate;
	}



	public void setBuyDate(Date buyDate) {
		this.buyDate = buyDate;
	}



	public String getBuyMethod() {
		return buyMethod;
	}



	public void setBuyMethod(String buyMethod) {
		this.buyMethod = buyMethod;
	}



	public int getProductNo() {
		return productNo;
	}



	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}



	@Override
	public String toString() {
		return "Order [orderNo=" + orderNo + ", productName=" + productName + ", name=" + name + ", address=" + address
				+ ", phone=" + phone + ", orderMemo=" + orderMemo + ", buyDate=" + buyDate + ", buyMethod=" + buyMethod
				+ ", productNo=" + productNo + "]";
	}
	
	 
	
	

}
