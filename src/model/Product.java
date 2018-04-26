package model;

public class Product {
	
	private int productId;
	private int shopId;
	private int productType;
	private String productName;
	private double productPrice;
	private String submitDate;
	private String inventory;
	
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getShopId() {
		return shopId;
	}
	public void setShopId(int shopId) {
		this.shopId = shopId;
	}
	public int getProductType() {
		return productType;
	}
	public void setProductType(int productType) {
		this.productType = productType;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public double getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}
	public String getSubmitDate() {
		return submitDate;
	}
	public void setSubmitDate(String submitDate) {
		this.submitDate = submitDate;
	}
	public String getInventory() {
		return inventory;
	}
	public void setInventory(String inventory) {
		this.inventory = inventory;
	}
	
	@Override
	public String toString() {
		return "Product [productId=" + productId + ", shopId=" + shopId + ", productType=" + productType
				+ ", productName=" + productName + ", productPrice=" + productPrice + ", submitDate=" + submitDate
				+ ", inventory=" + inventory + "]";
	}

}
