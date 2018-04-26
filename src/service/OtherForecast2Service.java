package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IOtherForecast2Dao;
import model.OtherForecast2;

@Service
public class OtherForecast2Service implements IOtherForecast2Service{
	
	@Autowired
	private IOtherForecast2Dao ot2Dao;

	@Override
	public OtherForecast2 selectOtherForecast2(int forId) {
		// TODO Auto-generated method stub
		OtherForecast2 selectOtherForecast2 = ot2Dao.selectOtherForecast2(forId);
		return selectOtherForecast2;
	}

	@Override
	public List<OtherForecast2> selectAllOtherForecast2() {
		// TODO Auto-generated method stub
		List<OtherForecast2> selectAllOtherForecast2 = ot2Dao.selectAllOtherForecast2();
		return selectAllOtherForecast2;
	}

}
