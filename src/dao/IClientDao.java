package dao;

import java.util.List;

import model.Client;

public interface IClientDao {
	
	public Client selectClient(int userId);
	public List<Client> selectAllClient();

}
