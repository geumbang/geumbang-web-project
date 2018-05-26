package model;

public class Accuracy {
	
	private int aId;
	private String date;
	private double goldPrice;
	private double goldForecast;
	private double error;
	
	public int getaId() {
		return aId;
	}
	public void setaId(int aId) {
		this.aId = aId;
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
	public double getGoldForecast() {
		return goldForecast;
	}
	public void setGoldForecast(double goldForecast) {
		this.goldForecast = goldForecast;
	}
	public double getError() {
		return error;
	}
	public void setError(double error) {
		this.error = error;
	}
	
	@Override
	public String toString() {
		return "Accuracy [aId=" + aId + ", date=" + date + ", goldPrice=" + goldPrice + ", goldForecast=" + goldForecast
				+ ", error=" + error + "]";
	}
	
}
