package dao;

import java.util.List;

import model.OtherForecast1;

public interface IOtherForecast1Dao {
	
	public OtherForecast1 selectOtherForecast1(int forId);
	public List<OtherForecast1> selectAllOtherForecast1();

}
