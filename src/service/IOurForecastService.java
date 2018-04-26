package service;

import java.util.List;

import model.OurForecast;

public interface IOurForecastService {
	
	public OurForecast selectOurForecast(int forId);
	public List<OurForecast> selectAllOurForecast();

}
