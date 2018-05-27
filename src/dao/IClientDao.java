package dao;

import java.util.List;  

import model.Client;

public interface IClientDao {
	

	public Integer joinClient(Client client);
	
	public Integer isExistClient(String userEmail);
	
	public Client getClientInfo(int userID);
	
	public Client clientCheck(String userEmail);

}
