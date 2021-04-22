package com.kh.member.model.vo;

import java.sql.Date;

/* 작성자 : 김혜미 */

public class Member {

	private int userNo;
	private String email;
	private String userPwd;
	private String userName;
	private String nickName;
	private String gender;
	private String userFileRename;
	private String birth;
	private int postCode;
	private String address;
	private String phone;
	private Date joinDate;
	private String userStatus;
	private String admin;
	
	public Member() {}

	public Member(int userNo, String email, String userPwd, String userName, String nickName, String gender,
			String userFileRename, String birth, int postCode, String address, String phone, Date joinDate,
			String userStatus, String admin) {
		super();
		this.userNo = userNo;
		this.email = email;
		this.userPwd = userPwd;
		this.userName = userName;
		this.nickName = nickName;
		this.gender = gender;
		this.userFileRename = userFileRename;
		this.birth = birth;
		this.postCode = postCode;
		this.address = address;
		this.phone = phone;
		this.joinDate = joinDate;
		this.userStatus = userStatus;
		this.admin = admin;
	}

	public Member(String email, String userPwd, String userName, String nickName) {
		super();
		this.email = email;
		this.userPwd = userPwd;
		this.userName = userName;
		this.nickName = nickName;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getUserFileRename() {
		return userFileRename;
	}

	public void setUserFileRename(String userFileRename) {
		this.userFileRename = userFileRename;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public int getPostCode() {
		return postCode;
	}

	public void setPostCode(int postCode) {
		this.postCode = postCode;
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

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}

	public String getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(String userStatus) {
		this.userStatus = userStatus;
	}

	public String getAdmin() {
		return admin;
	}

	public void setAdmin(String admin) {
		this.admin = admin;
	}

	@Override
	public String toString() {
		return "Member [userNo=" + userNo + ", email=" + email + ", userPwd=" + userPwd + ", userName=" + userName
				+ ", nickName=" + nickName + ", gender=" + gender + ", userFileRename=" + userFileRename + ", birth="
				+ birth + ", postCode=" + postCode + ", address=" + address + ", phone=" + phone + ", joinDate="
				+ joinDate + ", userStatus=" + userStatus + ", admin=" + admin + "]";
	}
	
	
}
