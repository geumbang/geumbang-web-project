package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IProductDao;
import model.Product;

@Service
public class ProductService implements IProductService{
	
	@Autowired
	private IProductDao pDao;

	@Override
	public Product selectProduct(int productId) {
		// TODO Auto-generated method stub
		Product selectProduct = pDao.selectProduct(productId);
		return selectProduct;
	}

	@Override
	public List<Product> selectAllProduct() {
		// TODO Auto-generated method stub
		List<Product> selectAllProduct = pDao.selectAllProduct();
		return selectAllProduct;
	}

}
