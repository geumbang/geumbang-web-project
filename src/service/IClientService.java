package service;

import java.util.List;  

import model.Client;
  
public interface IClientService {
	
public Client getClientInfo(int userID);
	
	public int isExistClient(String userEmail);
	
	public int joinClient(Client client);
	
	public int clientCheck(Client client);
	

	
	public List<Client> selectAllClient();
	public void updateClient(Client client);
	public void joinClientByOauth(String email, String name,int oauthType);


}
