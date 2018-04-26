package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IOtherForecast3Dao;
import model.OtherForecast3;

@Service
public class OtherForecast3Service implements IOtherForecast3Service{
	
	@Autowired
	private IOtherForecast3Dao ot3Dao;

	@Override
	public OtherForecast3 selectOtherForecast3(int forId) {
		// TODO Auto-generated method stub
		OtherForecast3 selectOtherForecast3 = ot3Dao.selectOtherForecast3(forId);
		return selectOtherForecast3;
	}

	@Override
	public List<OtherForecast3> selectAllOtherForecast3() {
		// TODO Auto-generated method stub
		List<OtherForecast3> selectAllOtherForecast3 = ot3Dao.selectAllOtherForecast3();
		return selectAllOtherForecast3;
	}

}
