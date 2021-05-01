package com.kh.coupon.model.vo;

public class Coupon {

	private int cp_no;
	private String cp_name;
	private int cp_price;
	private int cp_condition;
	private int cp_limit;
	private String cp_memo;
	
	public Coupon() {}

	public Coupon(int cp_no, String cp_name, int cp_price, int cp_condition, int cp_limit, String cp_memo) {
		super();
		this.cp_no = cp_no;
		this.cp_name = cp_name;
		this.cp_price = cp_price;
		this.cp_condition = cp_condition;
		this.cp_limit = cp_limit;
		this.cp_memo = cp_memo;
	}
	
	
	

	public Coupon(String cp_name, int cp_price, int cp_condition, String cp_memo) {
		super();
		this.cp_name = cp_name;
		this.cp_price = cp_price;
		this.cp_condition = cp_condition;
		this.cp_memo = cp_memo;
	}

	public int getCp_no() {
		return cp_no;
	}

	public void setCp_no(int cp_no) {
		this.cp_no = cp_no;
	}

	public String getCp_name() {
		return cp_name;
	}

	public void setCp_name(String cp_name) {
		this.cp_name = cp_name;
	}

	public int getCp_price() {
		return cp_price;
	}

	public void setCp_price(int cp_price) {
		this.cp_price = cp_price;
	}

	public int getCp_condition() {
		return cp_condition;
	}

	public void setCp_condition(int cp_condition) {
		this.cp_condition = cp_condition;
	}

	public int getCp_limit() {
		return cp_limit;
	}

	public void setCp_limit(int cp_limit) {
		this.cp_limit = cp_limit;
	}

	public String getCp_memo() {
		return cp_memo;
	}

	public void setCp_memo(String cp_memo) {
		this.cp_memo = cp_memo;
	}

	@Override
	public String toString() {
		return "Coupon [cp_no=" + cp_no + ", cp_name=" + cp_name + ", cp_price=" + cp_price + ", cp_condition="
				+ cp_condition + ", cp_limit=" + cp_limit + ", cp_memo=" + cp_memo + "]";
	}
	
	
	
}
