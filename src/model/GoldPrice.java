package model;

public class GoldPrice {
	
	private int goldId;
	private String date;
	private double goldPrice;
	
	public int getGoldId() {
		return goldId;
	}
	public void setGoldId(int goldId) {
		this.goldId = goldId;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public double getGoldPrice() {
		return goldPrice;
	}
	public void setGoldPrice(double goldPrice) {
		this.goldPrice = goldPrice;
	}
	
	@Override
	public String toString() {
		return "GoldPrice [goldId=" + goldId + ", date=" + date + ", goldPrice=" + goldPrice + "]";
	}
	
}
