package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IGoldPriceDao;
import model.GoldPrice;

@Service
public class GoldPriceService implements IGoldPriceService{
	
	@Autowired
	private IGoldPriceDao gDao;

	@Override
	public GoldPrice selectGoldPrice(int goldId) {
		// TODO Auto-generated method stub
		GoldPrice selectGoldPrice = gDao.selectGoldPrice(goldId);
		return selectGoldPrice;
	}

	@Override
	public List<GoldPrice> selectAllGoldPrice() {
		// TODO Auto-generated method stub
		List<GoldPrice> selectAllGoldPrice = gDao.selectAllGoldPrice();
		return selectAllGoldPrice;
	}

}
