package dao;

import java.util.List;

import model.RetailShop;

public interface IRetailShopDao {
	
	public RetailShop selectRetailShop(int shopId);
	public List<RetailShop> selectAllRetailShop();

}
