package model;

public class RetailShop {
	
	private int shopId;
	private int userId;
	private String shopName;
	private String address;
	private int ad;
	private String adtime;
	private String upload;
	private String contact;
	
	public int getShopId() {
		return shopId;
	}
	public void setShopId(int shopId) {
		this.shopId = shopId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getShopName() {
		return shopName;
	}
	public void setShopName(String shopName) {
		this.shopName = shopName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getAd() {
		return ad;
	}
	public void setAd(int ad) {
		this.ad = ad;
	}
	public String getAdtime() {
		return adtime;
	}
	public void setAdtime(String adtime) {
		this.adtime = adtime;
	}
	public String getUpload() {
		return upload;
	}
	public void setUpload(String upload) {
		this.upload = upload;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	
	@Override
	public String toString() {
		return "RetailShop [shopId=" + shopId + ", userId=" + userId + ", shopName=" + shopName + ", address=" + address
				+ ", ad=" + ad + ", adtime=" + adtime + ", upload=" + upload + ", contact=" + contact + "]";
	}

}
