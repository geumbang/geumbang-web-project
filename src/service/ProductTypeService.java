package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IProductTypeDao;
import model.ProductType;

@Service
public class ProductTypeService implements IProductTypeService{
	
	@Autowired
	private IProductTypeDao ptDao;

	@Override
	public ProductType selectProductType(int typeId) {
		// TODO Auto-generated method stub
		ProductType selectProductType = ptDao.selectProductType(typeId);
		return selectProductType;
	}

	@Override
	public List<ProductType> selectAllProductType() {
		// TODO Auto-generated method stub
		List<ProductType> selectAllProductType = ptDao.selectAllProductType();
		return selectAllProductType;
	}

}
