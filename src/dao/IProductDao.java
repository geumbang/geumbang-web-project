package dao;

import java.util.List;

import model.Product;

public interface IProductDao {
	
	public Product selectProduct(int productId);
	public List<Product> selectAllProduct();

}
