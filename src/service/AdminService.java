package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IAdminDao;
import model.Admin;

@Service
public class AdminService implements IAdminService{
	
	@Autowired
	private IAdminDao aDao;

	@Override
	public Admin selectAdmin(int adminId) {
		// TODO Auto-generated method stub
		Admin selectAdmin = aDao.selectAdmin(adminId);
		return selectAdmin;
	}

	@Override
	public List<Admin> selectAllAdmin() {
		// TODO Auto-generated method stub
		List<Admin> selectAllAdmin = aDao.selectAllAdmin();
		return selectAllAdmin;
	}

}
