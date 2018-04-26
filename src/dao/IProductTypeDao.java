package dao;

import java.util.List;

import model.ProductType;

public interface IProductTypeDao {
	
	public ProductType selectProductType(int typeId);
	public List<ProductType> selectAllProductType();

}
