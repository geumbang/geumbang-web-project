package dao;

import java.util.List;

import model.GoldPrice;

public interface IGoldPriceDao {
	
	public GoldPrice selectGoldPrice(int goldId);
	public List<GoldPrice> selectAllGoldPrice();

}
