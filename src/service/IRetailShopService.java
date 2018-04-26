package service;

import java.util.List;

import model.RetailShop;

public interface IRetailShopService {
	
	public RetailShop selectRetailShop(int shopId);
	public List<RetailShop> selectAllRetailShop();

}
