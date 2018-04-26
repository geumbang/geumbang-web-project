package dao;

import java.util.List;

import model.Retail;

public interface IRetailDao {
	
	public Retail selectRetail(int userId);
	public List<Retail> selectAllRetail();

}
