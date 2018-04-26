package dao;

import java.util.List;

import model.OtherForecast2;

public interface IOtherForecast2Dao {
	
	public OtherForecast2 selectOtherForecast2(int forId);
	public List<OtherForecast2> selectAllOtherForecast2();

}
