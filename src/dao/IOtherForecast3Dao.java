package dao;

import java.util.List;

import model.OtherForecast3;

public interface IOtherForecast3Dao {
	
	public OtherForecast3 selectOtherForecast3(int forId);
	public List<OtherForecast3> selectAllOtherForecast3();

}