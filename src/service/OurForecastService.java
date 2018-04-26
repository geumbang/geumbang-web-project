package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IOurForecastDao;
import model.OurForecast;

@Service
public class OurForecastService implements IOurForecastService{
	
	@Autowired
	private IOurForecastDao ouDao;

	@Override
	public OurForecast selectOurForecast(int forId) {
		// TODO Auto-generated method stub
		OurForecast selectOurForecast = ouDao.selectOurForecast(forId);
		return selectOurForecast;
	}

	@Override
	public List<OurForecast> selectAllOurForecast() {
		// TODO Auto-generated method stub
		List<OurForecast> selectAllOurForecast = ouDao.selectAllOurForecast();
		return selectAllOurForecast;
	}

}