package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IClientDao;
import model.Client;

@Service
public class ClientService implements IClientService{
	
	@Autowired
	private IClientDao cDao;

	@Override
	public Client selectClient(int userId) {
		// TODO Auto-generated method stub
		Client selectClient = cDao.selectClient(userId);
		return selectClient;
	}

	@Override
	public List<Client> selectAllClient() {
		// TODO Auto-generated method stub
		List<Client> selectAllClient = cDao.selectAllClient();
		return selectAllClient;
	}

}
