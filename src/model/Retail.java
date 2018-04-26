package model;

public class Retail {
	
	private int userId;
	private String userEmail;
	private String userPwd;
	private String userName;
	private double userAd;
	private String userPhone;
	private int shopId;
	
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
	public double getUserAd() {
		return userAd;
	}
	public void setUserAd(double userAd) {
		this.userAd = userAd;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public int getShopId() {
		return shopId;
	}
	public void setShopId(int shopId) {
		this.shopId = shopId;
	}
	
	@Override
	public String toString() {
		return "retail [userId=" + userId + ", userEmail=" + userEmail + ", userPwd=" + userPwd + ", userName="
				+ userName + ", userAd=" + userAd + ", userPhone=" + userPhone + ", shopId=" + shopId + "]";
	}

}
