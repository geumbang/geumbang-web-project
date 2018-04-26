package model;

public class OtherForecast3 {
	
	private int forId;
	private String date;
	private String forDate;
	private double forPrice;
	
	public int getForId() {
		return forId;
	}
	public void setForId(int forId) {
		this.forId = forId;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getForDate() {
		return forDate;
	}
	public void setForDate(String forDate) {
		this.forDate = forDate;
	}
	public double getForPrice() {
		return forPrice;
	}
	public void setForPrice(double forPrice) {
		this.forPrice = forPrice;
	}
	
	@Override
	public String toString() {
		return "OtherForecast1 [forId=" + forId + ", date=" + date + ", forDate=" + forDate + ", forPrice=" + forPrice
				+ "]";
	}

}
