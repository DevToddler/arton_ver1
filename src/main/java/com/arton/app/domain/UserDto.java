package com.arton.app.domain;

import java.util.Date;

public class UserDto {
	private Integer idx;
	private String userId;
	private String userPw;
	private String userName;
	private String userEmail;
	private String birthDate;
	private String gender;
	private String userPhone;
	private Date joinTime;
	private Boolean promoChk;
	private Date lastLoginTime;
	private Integer userStatus;

	// 쿠키에서 이용
	private boolean rememberId;


	public UserDto() {}

	public UserDto(Integer idx, String userId, String userPw, String userName, String userEmail, String birthDate, String gender, String userPhone, Date joinTime, boolean promoChk, Date lastLoginTime, Integer userStatus, boolean rememberId) {
		this.idx = idx;
		this.userId = userId;
		this.userPw = userPw;
		this.userName = userName;
		this.userEmail = userEmail;
		this.birthDate = birthDate;
		this.gender = gender;
		this.userPhone = userPhone;
		this.joinTime = joinTime;
		this.promoChk = promoChk;
		this.lastLoginTime = lastLoginTime;
		this.userStatus = userStatus;
		this.rememberId = rememberId;
	}


	public Integer getIdx() {
		return idx;
	}

	public void setIdx(Integer idx) {
		this.idx = idx;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public Date getJoinTime() {
		return joinTime;
	}

	public void setJoinTime(Date joinTime) {
		this.joinTime = joinTime;
	}

	public boolean isPromoChk() {
		return promoChk;
	}

	public void setPromoChk(boolean promoChk) {
		this.promoChk = promoChk;
	}

	public Date getLastLoginTime() {
		return lastLoginTime;
	}

	public void setLastLoginTime(Date lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}

	public Integer getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(Integer userStatus) {
		this.userStatus = userStatus;
	}

	public boolean isRememberId() {
		return rememberId;
	}

	public void setRememberId(boolean rememberId) {
		this.rememberId = rememberId;
	}

	@Override
	public String toString() {
		return "UserDto{" + "idx=" + idx + ", userId='" + userId + '\'' + ", userPw='" + userPw + '\'' + ", userName='" + userName + '\'' + ", userEmail='" + userEmail + '\'' + ", birthDate='" + birthDate + '\'' + ", gender='" + gender + '\'' + ", userPhone='" + userPhone + '\'' + ", joinTime=" + joinTime + ", promoChk=" + promoChk + ", lastLoginTime=" + lastLoginTime + ", userStatus=" + userStatus + ", rememberId=" + rememberId + '}';
	}
}
