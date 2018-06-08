package dao;

import java.util.HashMap;
import java.util.List;  

import model.Client;

public interface IClientDao {
	

	public Integer joinClient(Client client);
	
	public Integer isExistClient(String userEmail);
	
	public Client getClientInfo(int userID);
	
	public Client clientCheck(String userEmail);
	
//	public HashMap<String, Object> getClientInfo(int userID);
	
	public Client updateClientInfo(HashMap<String, Object> updatedClient);
	
	public Client updateClientPwd(String userPwd);
}
