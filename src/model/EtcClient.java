package model;

public class EtcClient {  
	
	private String userId;
	private String userEmail;
	private String userName;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	@Override
	public String toString() {
		return "Client [userId=" + userId + ", userEmail=" + userEmail  + ", userName="
				+ userName + "]";
	}
	
	
	
}
