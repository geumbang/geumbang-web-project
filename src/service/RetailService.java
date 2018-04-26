package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IRetailDao;
import model.Retail;

@Service
public class RetailService implements IRetailService{
	
	@Autowired
	private IRetailDao rDao;

	@Override
	public Retail selectRetail(int userId) {
		// TODO Auto-generated method stub
		Retail selectRetail = rDao.selectRetail(userId);
		return selectRetail;
	}

	@Override
	public List<Retail> selectAllRetail() {
		// TODO Auto-generated method stub
		List<Retail> selectAllRetail = rDao.selectAllRetail();
		return selectAllRetail;
	}

}
