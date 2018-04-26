package service;

import java.util.List;

import model.GoldPrice;

public interface IGoldPriceService {
	
	public GoldPrice selectGoldPrice(int goldId);
	public List<GoldPrice> selectAllGoldPrice();

}
