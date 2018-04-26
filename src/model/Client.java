package model;

public class Client {
	
	private int userId;
	private String userEmail;
	private String userPwd;
	private String userName;
	private double userPay;
	private String userLike;
	private double userWallet;
	private String userPhone;
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
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
	public double getUserPay() {
		return userPay;
	}
	public void setUserPay(double userPay) {
		this.userPay = userPay;
	}
	public String getUserLike() {
		return userLike;
	}
	public void setUserLike(String userLike) {
		this.userLike = userLike;
	}
	public double getUserWallet() {
		return userWallet;
	}
	public void setUserWallet(double userWallet) {
		this.userWallet = userWallet;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	
	@Override
	public String toString() {
		return "Client [userId=" + userId + ", userEmail=" + userEmail + ", userPwd=" + userPwd + ", userName="
				+ userName + ", userPay=" + userPay + ", userLike=" + userLike + ", userWallet=" + userWallet
				+ ", userPhone=" + userPhone + "]";
	}

}
