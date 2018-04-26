package service;

import java.util.List;

import model.Product;

public interface IProductService {
	
	public Product selectProduct(int productId);
	public List<Product> selectAllProduct();

}
