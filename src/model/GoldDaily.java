package model;

import java.util.Date;

public class GoldDaily {
	
	private int g_id;
	private Date g_date;
	private double gold_price;
	
	public int getG_id() {
		return g_id;
	}
	public void setG_id(int g_id) {
		this.g_id = g_id;
	}
	public Date getG_date() {
		return g_date;
	}
	public void setG_date(Date g_date) {
		this.g_date = g_date;
	}
	public double getGold_price() {
		return gold_price;
	}
	public void setGold_price(double gold_price) {
		this.gold_price = gold_price;
	}
	
	@Override
	public String toString() {
		return "GoldDaily [g_id=" + g_id + ", g_date=" + g_date + ", gold_price=" + gold_price + "]";
	}
	
}
