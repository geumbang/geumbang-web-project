package dao;

import java.util.List;

import model.Logs;

public interface ILogsDao {
	
	public Logs selectLogs(int loggerId);
	public List<Logs> selectAllLogs();

}
