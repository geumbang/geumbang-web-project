package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ILogsDao;
import model.Logs;

@Service
public class LogsService implements ILogsService{
	
	@Autowired
	private ILogsDao lDao;

	@Override
	public Logs selectLogs(int loggerId) {
		// TODO Auto-generated method stub
		Logs selectLogs = lDao.selectLogs(loggerId);
		return selectLogs;
	}

	@Override
	public List<Logs> selectAllLogs() {
		// TODO Auto-generated method stub
		List<Logs> selectAllLogs = lDao.selectAllLogs();
		return selectAllLogs;
	}

}
