package model;

public class Admin {
	
	private int adminId;
	private String adminEmail;
	private String adminPwd;
	private String adminName;
	private String adminPhome;
	
	public int getAdminId() {
		return adminId;
	}
	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}
	public String getAdminEmail() {
		return adminEmail;
	}
	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}
	public String getAdminPwd() {
		return adminPwd;
	}
	public void setAdminPwd(String adminPwd) {
		this.adminPwd = adminPwd;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAdminPhome() {
		return adminPhome;
	}
	public void setAdminPhome(String adminPhome) {
		this.adminPhome = adminPhome;
	}
	
	@Override
	public String toString() {
		return "Admin [adminId=" + adminId + ", adminEmail=" + adminEmail + ", adminPwd=" + adminPwd + ", adminName="
				+ adminName + ", adminPhome=" + adminPhome + "]";
	}

}
