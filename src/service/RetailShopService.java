package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IRetailShopDao;
import model.RetailShop;

@Service
public class RetailShopService implements IRetailShopService{
	
	@Autowired
	private IRetailShopDao rsDao;

	@Override
	public RetailShop selectRetailShop(int shopId) {
		// TODO Auto-generated method stub
		RetailShop selectRetailShop = rsDao.selectRetailShop(shopId);
		return selectRetailShop;
	}

	@Override
	public List<RetailShop> selectAllRetailShop() {
		// TODO Auto-generated method stub
		List<RetailShop> selectAllRetailShop = rsDao.selectAllRetailShop();
		return selectAllRetailShop;
	}

}
