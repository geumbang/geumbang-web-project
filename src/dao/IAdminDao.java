package dao;

import java.util.List;

import model.Admin;

public interface IAdminDao {
	
	public Admin selectAdmin(int adminId);
	public List<Admin> selectAllAdmin();

}
