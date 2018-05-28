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
	public int isExistClient(String userEmail) {

		int isExist = cDao.isExistClient(userEmail);

		return isExist;
	}

	
	

	

	@Override
	public void joinClientByOauth(String email, String name, int oauthType) {
		Client client = new Client();
		client.setUserEmail(email);
		client.setUserName(name);
		//client.setOauthType(oauthType);

		cDao.joinClient(client);

	}

	@Override
	public int joinClient(Client client) {
		int userKey = cDao.joinClient(client);
		return userKey;
	}

	@Override
	public int clientCheck(Client client) {

		int result = -1;

		Client user = cDao.clientCheck(client.getUserEmail());

		
		if (user == null) { // 존재하지 않는 회원
			result = -1;
		}

		else if (user.getUserPwd() != null && user.getUserPwd().equals(client.getUserPwd())) {
			//아이디&비밀번호 일치
			result = user.getUserId();
		}

		else {
			result = 0; // 비밀번호 틀림
		}

		return result;
	}

	@Override
	public Client getClientInfo(int userID) {
	  Client client = cDao.getClientInfo(userID);
		return client;
	}

	@Override
	public List<Client> selectAllClient() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateClient(Client client) {
		// TODO Auto-generated method stub
		
	}

	
}
