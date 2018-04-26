package service;

import java.util.List;

import model.Admin;

public interface IAdminService {
	
	public Admin selectAdmin(int adminId);
	public List<Admin> selectAllAdmin();

}
