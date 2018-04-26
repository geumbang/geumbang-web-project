package dao;

import java.util.List;

import model.OurForecast;

public interface IOurForecastDao {
	
	public OurForecast selectOurForecast(int forId);
	public List<OurForecast> selectAllOurForecast();

}
