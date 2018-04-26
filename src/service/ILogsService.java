package service;

import java.util.List;

import model.Logs;

public interface ILogsService {
	
	public Logs selectLogs(int loggerId);
	public List<Logs> selectAllLogs();

}
