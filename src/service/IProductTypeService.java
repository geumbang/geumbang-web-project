package service;

import java.util.List;

import model.ProductType;

public interface IProductTypeService {
	
	public ProductType selectProductType(int typeId);
	public List<ProductType> selectAllProductType();

}
