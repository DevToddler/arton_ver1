package com.arton.app.domain;

public class ChangePwDto {
	private String userPw;
	private String newPw;
	private String chkPw;

	public ChangePwDto(String userPw, String newPw, String chkPw) {
		this.userPw = userPw;
		this.newPw = newPw;
		this.chkPw = chkPw;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public String getNewPw() {
		return newPw;
	}

	public void setNewPw(String newPw) {
		this.newPw = newPw;
	}

	public String getChkPw() {
		return chkPw;
	}

	public void setChkPw(String chkPw) {
		this.chkPw = chkPw;
	}

	@Override
	public String toString() {
		return "ChangePwDto{" + "userPw='" + userPw + '\'' + ", newPw='" + newPw + '\'' + ", chkPw='" + chkPw + '\'' + '}';
	}
}
