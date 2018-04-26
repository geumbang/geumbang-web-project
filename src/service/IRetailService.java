package service;

import java.util.List;

import model.Retail;

public interface IRetailService {
	
	public Retail selectRetail(int userId);
	public List<Retail> selectAllRetail();

}
