package service;

import java.util.List;

import model.Client;

public interface IClientService {
	
	public Client selectClient(int userId);
	public List<Client> selectAllClient();

}
