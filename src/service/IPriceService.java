package service;

import java.util.List;

import model.Price;

public interface IPriceService {
	
	public Price goldPrice();
	public List<Object> goldPriceResult();
	public List<Price> selectAllGoldPrice();
	public Price selectGoldPrice(int g_id);

}
